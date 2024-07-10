<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Terms of Service</title>
</head>

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
    	
    	.service h1, .service p{
    	
    		margin: 0; /* Remove default margins */
    		padding: 10px; /* Add padding if needed */
    		position: relative;
    		top: -300px; /* Adjust as needed to position below the navigation bar */
    		text-align: center; /* Center the text horizontally */
    		
		}
    	
	</style>
    
<body>

<%@ include file="Navbar.jsp" %>
	
		<main>
	    	<section class="service" id="service">
	        	
	        	<h1>Terms of Service</h1>
	        	
	        	
	        	<p>By accessing and using our website, you agree to comply with these terms of service.</p>
		    
				<p>You must be at least 18 years old to use our service. All content on our website is protected by copyright.</p>		    
		        	
		        <p>By submitting content, you grant us the right to use it.</p>
		        
		        <p>We are not liable for any damages resulting from your use of our service. We may update these terms at any time. </p>
		        	
		        <p>If you have any questions, please contact us.</p>
		         
	        	
	    	</section>
		</main>
	
		<%@ include file="Footer.jsp" %>
</body>
</html>