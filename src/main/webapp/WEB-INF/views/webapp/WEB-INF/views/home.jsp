<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>home</title>
<body>
</head>
	<div>
		<h1>Hotel Search</h1>
	</div>
<header>
  
  <div>
    <div>
      <h2>Find Hotel</h2>
    </div>
    <div>
      <form action="/results">
        <div>
          <div>
            <label><strong>Select City</strong></label>
            <select name="city">
            	<option value="--" selected disabled hidden>--</option>
            	<option value="Detroit">Detroit</option>
            	<option value="Cleveland">Cleveland</option>
            	<option value="Columbus">Detroit</option>
            </select>
          </div>
          <div>
            <label>Maximum Price</label>
            <input type="number" value="175" name="max" min="1">
          </div>
        </div>
        <button type="submit"> Search</button>
      </form>
    </div>
  </div>
</header>
</body>
</html>

