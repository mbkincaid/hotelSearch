package grandcircus.HotelLab;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository @Transactional
public class HotelDao {

	@PersistenceContext
	private EntityManager em;
	
	public List<Hotel> findByCity(String city){
		
		return em.createQuery("FROM Hotel WHERE city = :city", Hotel.class)
				.setParameter("city", city).getResultList();
	}
}
