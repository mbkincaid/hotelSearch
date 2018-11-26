package grandcircus.HotelLab;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import grandcircus.HotelLab.Hotel;
import grandcircus.HotelLab.HotelDao;

@Controller
public class HotelController {
	
	@Autowired
	HotelDao hotelDao;

	@RequestMapping ("/") 
	public ModelAndView index() {
		return new ModelAndView("home");
	}
	@RequestMapping("/results")
	public ModelAndView showResults(@RequestParam(name="city", required=false) 
						String city, 
						@RequestParam(name="maximum", required=false) 
						int maximum) {
		ModelAndView mv = new ModelAndView();
//		List<Hotel> list = new ArrayList<>();
		List<Hotel> hotel = hotelDao.findByCity(city);
//		for(Hotel h : hotel) {
//			if(h.getPricePerNight() < maximum) {
//				list.add(h);	
//			}
//		}
		
//		mv.addObject("maximum", maximum);
//		mv.addObject("list", list);
		mv.addObject("city", city);
		
		return mv;
		
	}
}
