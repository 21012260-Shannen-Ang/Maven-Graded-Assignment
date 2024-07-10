<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Privacy Policy</title>
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
    	
 
    	.policy h1, .policy p{
    	
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
	    	<section class="policy" id="policy">
	        	
	        	<h1>Privacy Policy</h1>
	        	
	        	
	        	<p>We respect your privacy and are committed to protecting your personal information.</p>
		    
				<p>When you visit our website, we collect certain information about your visit to improve our services and your experience.</p>		    
		        	
		        <p>We may collect personal information such as your name and email address when you voluntarily provide it to us.</p>
		        
		        <p>We use this information to respond to your inquiries and provide you with relevant updates.</p>
		        	
		        <p>We do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except as required by law.</p>
		        
		        <p>By using our website, you consent to our privacy policy.</p>
	        	
	    
	    	</section>
		</main>
	
		<%@ include file="Footer.jsp" %>
</body>
</html>