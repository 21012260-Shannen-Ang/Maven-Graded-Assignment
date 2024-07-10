<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us - Fresh Mart</title>
</head>

<style>
    	body {
        	background-image: url('images/AboutUsBg.png');
        	background-size: cover;
        	background-position: center;
        	text-align: center;
        	background-attachment: fixed; /* Keeps the background fixed */
       
    	}
    	
    	
    	h1 {
        	color: black;
        	
        	font-size: 40px;
        	
        	font-family: Verdana;
        	
        	text-transform: uppercase; /* Transform text to uppercase */

	
    	}
    	
    	.about {
		  width: 60%; /* Adjust the width as needed */
		  margin: 50px auto 50px 20px; /* Aligns the section to the left with some margin */
		  padding: 20px;
		  
		}
    	.about h1, .about p{
    	
    		margin: 0; /* Remove default margins */
    		padding: 10px; /* Add padding if needed */
    		position: relative;
    		top: -310px; /* Adjust as needed to position below the navigation bar */
    		text-align: left; /* Center the text horizontally */
		}
    	
	</style>
<body>

	<%@ include file="Navbar.jsp" %>

	<!-- Your page content here -->
	
	<main>
        
        <div class="about">
        
            <h1>About Fresh Mart</h1>
            
            <p>Welcome to Fresh Mart, your premier online e-commerce portal for the freshest and highest quality ingredients delivered straight to your doorstep.</p>
        	
        	<p>Our mission is to make grocery shopping easy, convenient, and enjoyable. We are committed to providing a seamless shopping experience that combines the convenience of online shopping with the quality and freshness of a local market.</p>
        	
        	<p>At Fresh Mart, we carefully select our products to ensure they meet the highest standards of quality and freshness. Whether you are looking for organic produce, artisanal breads, or gourmet pantry staples, we have got you covered.</p>
        	
        </div>

    </main>

	<%@ include file="Footer.jsp" %>
	
</body>
</html>