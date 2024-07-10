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

		/* Styling the navigation bar */
		nav {
			background-color: #333;
			overflow: hidden;
			width: 100%; /* Set the width to 100% */
			margin-bottom: 450px; /* Add margin to create space between navigation bar and footer, Adjust the value as needed */
		}

		/* Styling the list inside the navigation bar */
		.nav-list {
			list-style-type: none;
			padding: 0;
			margin: 0;
			display: flex;
			justify-content: space-around;
			height: 150px; /* Set the height of the navigation bar */
			width: 100%; /* Set the width to 100% */
    		max-width: 1200px; /* Optionally, set a maximum width */
    		margin: 0 auto; /* Center the navbar horizontally */
    		font-size: 20px;
		}

		/* Styling the individual navigation items */
		.nav-item {
			margin: 0;
		}

		/* Styling the links inside the navigation items */
		.nav-item a {
			display: block;
			color: white;
			text-align: center;
			padding: 14px 20px;
			text-decoration: none;
			font-weight: bold; /* Make the font bold */
			text-transform: uppercase; /* Convert text to uppercase */
			transition: background-color 0.3s, color 0.3s; /* Add transition effect */
			margin-top: 40px; /* Add margin to move the text down */
			margin-left: 65px;
		}

		/* Add a hover effect for links */
		.nav-item a:hover {
			background-color: #575757;
			border-radius: 5px; /* Rounded corners on hover */
		}
		
		/* Style for active link */
		.nav-item.active a {
    		
    		color: #40E0D0; /* Highlight text color */
		}
		
		
		.logo {
    		position: absolute; /* Position the logo absolutely */
    		top: 20px; /* Distance from the top */
    		left: 30px; /* Distance from the left */
		}

		ul {
    		margin-top: 60px; /* Adjust margin to create space below the logo */
		}
		
		.logo img {
    		width: 100px; /* Adjust the width of the logo */
    		height: auto; /* Maintain aspect ratio */
		}
		
	</style>
</head>

<body>

<!-- Logo -->
	
	<div class="logo">
	
		<a href="Home.jsp">
		
			<img src="images/Logo.png" alt="Fresh Mart Logo">
		
		</a>
	</div>
	
	<nav>
		<ul class="nav-list">
			<li class="nav-item <%= request.getRequestURI().endsWith("Home.jsp") ? "active" : "" %>"><a href="Home.jsp">Home</a></li>
			<li class="nav-item <%= request.getRequestURI().endsWith("About.jsp") ? "active" : "" %>"><a href="About.jsp">About Us</a></li>
			<li class="nav-item <%= request.getRequestURI().endsWith("Product.jsp") ? "active" : "" %>"><a href="Product.jsp">Products</a></li>
			<li class="nav-item <%= request.getRequestURI().endsWith("Contact.jsp") ? "active" : "" %>"><a href="Contact.jsp">Contact Us</a></li>
			
			 <!-- Sign Up Icon -->
        	<li class="nav-item sign-up"><a href="Register.jsp">
                <i class="fas fa-user"></i> Sign Up
            </a>
        	</li>
      	
		</ul>
	
	</nav>
	
</body>

</html>