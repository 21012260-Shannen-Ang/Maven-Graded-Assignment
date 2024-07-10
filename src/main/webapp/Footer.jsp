<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<title>Insert title here</title>

	<style>
		/* Reset some basic elements for consistent styling across browsers */
		body, ul {
			margin: 0;
			padding: 0;
		}

		/* Basic styling for the body */
		body {
			font-family: Arial, sans-serif;
		}
		
		p {
        	font-size: 20px;
        	font-weight: 700;
    	}
    	

		/* Footer styling */
        footer {
            position: fixed;
		    bottom: 0;
		    left: 0;
		    width: 100%;
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }

        .footer-content {
            max-width: 1000px;
            margin: auto;
        }

        .footer-links {
            list-style-type: none;
            padding: 0;
            margin: 10px 0 0;
            display: flex;
            justify-content: center;
            font-size: 20px
        }

        .footer-links li {
            margin: 0 10px;
        }

        .footer-links a {
            color: white;
            text-decoration: none;
        }

        .footer-links a:hover {
            text-decoration: underline;
        }
        
        /* Style for active link */
		.footer-links.active a {
    		
    		color: #40E0D0; /* Highlight text color */
		}
        
        .social-icons {
    		margin-top: 20px;
		}

		.social-icons i {
    		display: inline-block;
    		width: 40px; /* Set width and height for circle */
    		height: 40px;
    		line-height: 40px; /* Center the icon vertically */
    		text-align: center; /* Center the icon horizontally */
    		border-radius: 50%; /* Make it a circle */
    		font-size: 25px; /* Adjust icon size */
    		color: #fff; /* Icon color */
    		background-color: #333; /* Circle background color */
    		margin-right: 10px; /* Adjust spacing between icons */
		}
		
	</style>

</head>
<body>

	<footer>
	
		<div class="footer-content">
			<p>&copy; 2024 Fresh Mart. All rights reserved.</p>
			<ul class="footer-links">
				
				<li class="footer-links <%= request.getRequestURI().endsWith("Policy.jsp") ? "active" : "" %>"><a href="Policy.jsp">Privacy Policy</a></li>
				<li class="footer-links <%= request.getRequestURI().endsWith("Service.jsp") ? "active" : "" %>"><a href="Service.jsp">Terms of Service</a></li>
				<li class="footer-links <%= request.getRequestURI().endsWith("Home.jsp") ? "active" : "" %>"><a href="Home.jsp">Home</a></li>
				<li class="footer-links <%= request.getRequestURI().endsWith("About.jsp") ? "active" : "" %>"><a href="About.jsp">About Us</a></li>
				<li class="footer-links <%= request.getRequestURI().endsWith("Product.jsp") ? "active" : "" %>"><a href="Product.jsp">Products</a></li>
				<li class="footer-links <%= request.getRequestURI().endsWith("Contact.jsp") ? "active" : "" %>"><a href="Contact.jsp">Contact Us</a></li>
				
			</ul>
			
			<div class="social-icons">
            	<i class="fab fa-facebook-f"></i>
            	<i class="fab fa-youtube"></i>
            	<i class="fab fa-instagram"></i> <!-- Instagram icon -->
            	<!-- Add more social media icons as needed -->
        	</div>
		</div>
		
	</footer>
	
</body>
</html>