<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<title>Contact Us - Fresh Mart</title>

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
        	
        	font-size: 45px;
        	
        	font-family: Cormorant Garamond;
        	
        	
    
    	}
    	

    	.contact h1 {
    	
    		margin: 0; /* Remove default margins */
    		padding: 10px; /* Add padding if needed */
    		position: relative;
    		top: -260px; /* Adjust as needed to position below the navigation bar */
    		text-align: center; /* Center the text horizontally */
    		margin-bottom: -240px; /* Adjust as needed */
		}
		
		.contact {
		    padding: 10px;
		    width: 500px; /*fixed width so that it maintains a consistent width, which can make the design look more compact and centered.*/
		    margin: 20px auto;
		}
	
		.contact-icon {
		    align-items: center;
		    margin-bottom: 15px; /*Spacing between each line*/
		    font-size: 25px;
		    
		}
	
		.contact-icon i {
		    margin-right: 10px;
		    font-size: 24px;
		    color: #333;
		    
		}
	</style>

</head>
<body>

	<%@ include file="Navbar.jsp" %>

	<!-- Your page content here -->
	
	<main>
       
        <section class="contact" id="contact">
            <h1>Contact Us: </h1>
            
            <div class="contact-icon">
                <i class="fas fa-phone"></i> +65 1234 5678
            </div>
            
            <div class="contact-icon">
            	<i class="fas fa-envelope"></i> freshmart@gmail.com
            </div>
            
            <div class="contact-icon">
            	<i class="fas fa-map-marker-alt"></i> 
			    123 Grocery Street, Singapore 987654
            </div>
           
        </section>
        
    </main>

	<%@ include file="Footer.jsp" %>
	
</body>
</html>