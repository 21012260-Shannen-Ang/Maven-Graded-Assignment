<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Home - Fresh Mart</title>

	<style>
    	body {
        	background-image: url('images/HomeBackground.png');
        	background-size: cover;
        	background-position: center;
        	text-align: center;
        	background-attachment: fixed; /* Keeps the background fixed */
        	/* Add more background properties as needed */
    	}
    	
    	
    	h1 {
        	color: black;
        	
        	font-size: 30px;
        	
        	font-family: Arial, sans-serif;
        	
        	text-transform: uppercase; /* Transform text to uppercase */
    
    	}
    	
    	h2 {
        	color: black;
        	
        	font-size: 50px;
        	
        	font-family: Cormorant Garamond;
        	
    	}
    	
    	h3 {
        	
        	color: black;
        	
        	font-size: 25px;
        	
        	font-family: Calibri;
			
    	}
    	
    	
    	.home h1,.home h2, .home h3, .btn {
    	
    		margin: 0; /* Remove default margins */
    		padding: 10px; /* Add padding if needed */
    		position: relative;
    		top: -250px; /* Adjust as needed to position below the navigation bar */
    		text-align: center; /* Center the text horizontally */
		}
		
		.btn {
		  display: inline-block;
		  margin-top: 10px;
		  background-color: #007bff;
		  color: #fff;
		  text-decoration: none;
		  border-radius: 5px;
		  font-size: 25px;
		}

	</style>
    
</head>
<body>

	<%@ include file="Navbar.jsp" %>

	<main>
    
    	<section class="home" id="home">
        	<h1>Welcome to Fresh Mart</h1>
        	
        	<h2>Shop fresh, Shop convenient, Shop Fresh Mart.</h2>
        	
        	<h3>Discover the best of both worlds at Fresh Mart Online. 
        		Enjoy top-quality ingredients delivered to you with ease. 
        	</h3>

        	<a href="Product.jsp" class="btn">Shop Now</a>

    	</section>
    	
	</main>

	<%@ include file="Footer.jsp" %>
	

</body>
</html>