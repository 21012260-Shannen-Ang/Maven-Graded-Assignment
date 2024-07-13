<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List" %> <!-- Add this import statement -->
<%@ page import="java.util.ArrayList" %> <!-- Add this import statement -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products - Fresh Mart</title>

</head>

	<style>
	    body {
	        background-image: url('images/HomeBackground.png');
	        background-size: cover;
	        background-position: center;
	        background-attachment: fixed; /* Keeps the background fixed */
	        
	    }
	    
	    .product-list {
	        display: flex;
	        flex-wrap: wrap;
	        justify-content: left;
	        margin-top: -100px; /* Adjust the margin as needed */
	        padding-top: 100px;
	        height: 100%;
		    overflow-y: auto; /* Enables vertical scrolling */
		    transform: scale(0.85); /* Zoom out the main content */
    		transform-origin: top left; /* Adjust the origin of the scaling */
		    padding-bottom: 100px; /* Ensure content doesn't overlap with footer */
		    margin-left: 20px; /* Add left margin to align the title */
	       
	    }
	    .product {
	        display: inline-block; /* Display the element as an inline block */
	        margin: 20px; /* Set margin around the element */
	        border: 1px solid #ccc; /* Set a 1px solid border with color #ccc */
	        padding: 10px; /* Set padding inside the element */
	        background-color: rgba(255, 255, 255, 0.8); /* Set background color with transparency */
	        width: 200px; /* Set the width of the element */
	        text-align: left; /* Align text to the left */
	        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add a shadow effect */
	        border-radius: 8px; /* Add rounded corners */
	        
	    }
	    .product img {
	        max-width: 100%;
	        height: auto;
	        border-bottom: 1px solid #ccc;
	        padding-bottom: 10px;
	        margin-bottom: 10px;
	    }
	    .product h3 {
	        font-size: 18px;
	        margin: 0;
	    }
	    .product p {
	        font-size: 14px;
	        margin: 5px 0;
	    }
	    
	    .product-title {
	        text-align: left;
	        margin-bottom: 20px;
	        margin-left: 20px; /* Add left margin to align the title */
	        margin-top: -100px; /* Adjust the margin as needed */
    	}
    
	    .product-line {
	        width: 200px;
	        height: 2px;
	        background-color: #000;
	        margin: 0 auto 20px 20px; /* Adjust left margin to match the title's margin */
	    }

</style>
	
<body>

	<%@ include file="Navbar.jsp" %>

	
	
	<main>
    
    	<!-- Promotion section -->
    	
    	<%@ include file="Promotion.jsp" %>
    	
    	<!-- Products [Fruits & Vegetables]-->
    	
    	<div class="product-section">
	    
	        <h2 class="product-title">Fruits & Vegetables</h2>
	
	        
	        <div class="product-line"></div>

    
        <section class="products" id="fruitsVegetables">
        
        
        <div class="product-list">
            <%
                // Define the product data
                List<String[]> fruitsVegetables = new ArrayList<>();
                
                fruitsVegetables.add(new String[]{"Strawberry", "300g", "6.00", "images/Strawberry.jpg"});
                fruitsVegetables.add(new String[]{"Tomato", "800g", "4.00", "images/Tomato.jpg"});
                fruitsVegetables.add(new String[]{"Watermelon", "2kg", "5.50", "images/Watermelon.jpg"});
                fruitsVegetables.add(new String[]{"Sweet Corn", "2 per pack", "2.00", "images/Corn.jpg"});
                fruitsVegetables.add(new String[]{"Japan Sweet Potato", "500g", "6.00", "images/Sweet Potato.png"});
              
                // Iterate through the products and display them
                for (String[] product : fruitsVegetables) {
                    String name = product[0];
                    String description = product[1];
                    String price = product[2];
                    String imagePath = product[3];
            %>
            <div class="product">
                <img src="<%= imagePath %>" alt="<%= name %>">
                <h3><%= name %></h3>
                <p><%= description %></p>
                <p>Price: $<%= price %></p>
                
            </div>
            <%
                }
            %>
        </div>

    </section>
   
	</div>
	
	
	<!-- Products [Bakery & Dairy]-->
    	
    	<div class="product-section">
	    
	        <h2 class="product-title">Bakery & Dairy</h2>

	        <div class="product-line"></div>

        <section class="products" id="bakeryDairy">
        
        
        <div class="product-list">
            <%
                // Define the product data
                List<String[]> bakeryDairy = new ArrayList<>();
                
                bakeryDairy.add(new String[]{"Bread", "600g", "2.00", "images/Bread.jpg"});
                bakeryDairy.add(new String[]{"Sunshine Strawberry Bun", "65g", "2.00", "images/Sunshine.jpeg"});
                bakeryDairy.add(new String[]{"Vallina Twiggles", "80g", "2.00", "images/yTwiggles.jpeg"});
                bakeryDairy.add(new String[]{"Chocolate Twiggles", "80g", "2.00", "images/bTwiggles.jpeg"});
                bakeryDairy.add(new String[]{"Tiramisu Twiggles", "80g", "2.00", "images/brTwiggles.jpeg"});
                bakeryDairy.add(new String[]{"Full Cream Fresh Milk", "900ml", "3.50", "images/Milk1.jpeg"});
                bakeryDairy.add(new String[]{"Low Fat Fresh Milk", "900ml", "3.50", "images/Milk2.jpg"});
               
                // Iterate through the products and display them
                for (String[] product : bakeryDairy) {
                    String name = product[0];
                    String description = product[1];
                    String price = product[2];
                    String imagePath = product[3];
            %>
            <div class="product">
                <img src="<%= imagePath %>" alt="<%= name %>">
                <h3><%= name %></h3>
                <p><%= description %></p>
                <p>Price: $<%= price %></p>
                
            </div>
            <%
                }
            %>
        </div>

    </section>
   
	</div>
	
	
	<!-- Products [Meat & Seafood]-->
    	
    	<div class="product-section">
	    
	        <h2 class="product-title">Meat & Seafood</h2>

	        <div class="product-line"></div>

        <section class="products" id="meatSeafood">
        
        
        <div class="product-list">
            <%
                // Define the product data
                List<String[]> meatSeafood = new ArrayList<>();
                
                meatSeafood.add(new String[]{"Pork Belly", "300g", "8.00", "images/Meat.jpg"});
                meatSeafood.add(new String[]{"Salmon", "350g", "10.00", "images/Salmon.png"});
                meatSeafood.add(new String[]{"Tiger Prawn", "200g", "3.00", "images/Prawn.jpeg"});
                meatSeafood.add(new String[]{"Blue Crab", "200g", "9.00", "images/Crab.jpg"});
               
                // Iterate through the products and display them
                for (String[] product : meatSeafood) {
                    String name = product[0];
                    String description = product[1];
                    String price = product[2];
                    String imagePath = product[3];
            %>
            <div class="product">
                <img src="<%= imagePath %>" alt="<%= name %>">
                <h3><%= name %></h3>
                <p><%= description %></p>
                <p>Price: $<%= price %></p>
                
            </div>
            <%
                }
            %>
        </div>

    </section>
   
	</div>
	
	
	<!-- Products [Drink & Dessert]-->
    	
    	<div class="product-section">
	    
	        <h2 class="product-title">Drink & Dessert</h2>

	        <div class="product-line"></div>

        <section class="products" id="drinkDessert">
        
        
        <div class="product-list">
            <%
                // Define the product data
                List<String[]> drinkDessert = new ArrayList<>();
                
                drinkDessert.add(new String[]{"Mini Coke", "6 x 180ml", "5.00", "images/Coke.jpg"});
                drinkDessert.add(new String[]{"Peppermint Green Tea", "6 x 300ml", "5.00", "images/Pokka.jpg"});
                drinkDessert.add(new String[]{"Neapolitan Ice Cream", "1.5L", "6.50", "images/IceCream.jpg"});
                drinkDessert.add(new String[]{"Magnum Ice Cream Pint", "400g", "14.50", "images/Magnum.jpeg"});
               
                // Iterate through the products and display them
                for (String[] product : drinkDessert) {
                    String name = product[0];
                    String description = product[1];
                    String price = product[2];
                    String imagePath = product[3];
            %>
            <div class="product">
                <img src="<%= imagePath %>" alt="<%= name %>">
                <h3><%= name %></h3>
                <p><%= description %></p>
                <p>Price: $<%= price %></p>
                
            </div>
            <%
                }
            %>
        </div>

    </section>
   
	</div>
	
	
	<!-- Products [Snacks]-->
    	
    	<div class="product-section">
	    
	        <h2 class="product-title">Snacks</h2>

	        <div class="product-line"></div>

        <section class="products" id="snack">
        
        
        <div class="product-list">
            <%
                // Define the product data
                List<String[]> snack = new ArrayList<>();
                
                snack.add(new String[]{"Doritos Cool Ranch", "200g", "5.00", "images/Doritos.jpeg"});
                snack.add(new String[]{"Calbee Seaweed", "80g", "2.00", "images/Calbee.jpeg"});
                snack.add(new String[]{"Cheezels", "80g", "2.50", "images/Cheezels.jpeg"});
                snack.add(new String[]{"Calbee Original Prawn Cracker", "70g", "2.50", "images/Prawn cracker.jpeg"});
                snack.add(new String[]{"Hello Panda", "5 x 50g", "4.50", "images/HP.jpeg"});
                snack.add(new String[]{"Julie's PB Sandwich Cracker (12 packs)", "360g", "6.50", "images/Biscuit.jpeg"});
               
                // Iterate through the products and display them
                for (String[] product : snack) {
                    String name = product[0];
                    String description = product[1];
                    String price = product[2];
                    String imagePath = product[3];
            %>
            <div class="product">
                <img src="<%= imagePath %>" alt="<%= name %>">
                <h3><%= name %></h3>
                <p><%= description %></p>
                <p>Price: $<%= price %></p>
                
            </div>
            <%
                }
            %>
        </div>

    </section>
   
	</div>
	
    </main>

	<%@ include file="Footer.jsp" %>
	
</body>
</html>