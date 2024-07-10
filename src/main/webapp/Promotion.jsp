<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %> <!-- Add this import statement -->
<%@ page import="java.util.ArrayList" %> <!-- Add this import statement -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
		.promo-list {
	        display: flex;
	        flex-wrap: wrap;
	        justify-content: left;
	        margin-top: -100px; /* Adjust the margin as needed */
	        padding-top: 100px;
	        height: 100%;
		    overflow-y: auto; /* Enables vertical scrolling */
		    transform: scale(0.85); /* Zoom out the main content */
    		transform-origin: top left; /* Adjust the origin of the scaling */
		    padding-bottom: 50px; /* Ensure content doesn't overlap with footer */
		    margin-left: 20px; /* Add left margin to align the title */
	       
	    }
	    .promos {
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
	    .promos img {
	        max-width: 100%;
	        height: auto;
	        border-bottom: 1px solid #ccc;
	        padding-bottom: 10px;
	        margin-bottom: 10px;
	    }
	    .promos h3 {
	        font-size: 18px;
	        margin: 0;
	    }
	    .promos p {
	        font-size: 14px;
	        margin: 5px 0;
	    }
		.promotion {
	        position: absolute; /* Position promotion section relative to container */
	        top: 0; /* Align promotion section to the top of container */
	        left: 0; /* Align promotion section to the left of container */
	        text-align: left;
	        margin: 20px; /* Adjust margin as needed */
	    }
	    .promotion-title {
	        text-align: left;
	        margin-bottom: 20px;
	        margin-left: 20px; /* Add left margin to align the title */
	        margin-top: -410px; /* Adjust the margin as needed */
    	}
    
	    .promotion-line {
	        width: 200px;
	        height: 2px;
	        background-color: #000;
	        margin: 0 auto 20px 20px; /* Adjust left margin to match the title's margin */
	    }

</style>
<body>

	<div class="promotion-section">
	    
	        <h2 class="promotion-title">Special Promotions (20%)</h2>
	        
	        <div class="promotion-line"></div>
	        
	        
	    <section class="promo" id="promo">

        <div class="promo-list">
            <%
                // Define the product data
                List<String[]> promo = new ArrayList<>();
                
                promo.add(new String[]{"Mineral Water", "12 x 1.5L", "9.00", "images/Water.jpeg", "7.20"});
                promo.add(new String[]{"Pepsi", "2 x 1.5L", "4.50", "images/Pepsi.jpeg", "3.60"});
                promo.add(new String[]{"Freezepax Nuggets", "1kg", "12.00", "images/Nugget.jpeg", "9.60"});
                promo.add(new String[]{"Cuttlefish Ball", "650g", "10.00", "images/Cuttlefish Ball.jpeg", "8.00"});
                promo.add(new String[]{"Crinkle Cut Fries", "1kg", "5.50", "images/Fries.jpeg", "4.40"});

                // Iterate through the products and display them
                for (String[] promos : promo) {
                	
                	String name = promos[0];
                    String description = promos[1];
                    String actualPrice = promos[2];
                    String imagePath = promos[3];
                    String promotionalPrice = promos[4];
            %>
            <div class="promos">
                <img src="<%= imagePath %>" alt="<%= name %>">
                <h3><%= name %></h3>
                <p><%= description %></p>
                <p><del>Actual Price: $<%= actualPrice %></del></p>
                <p>Promotional Price: $<%= promotionalPrice %></p> <!-- New -->
                
            </div>
            <%
                }
            %>
        </div>

    </section>
	
	</div>
</body>
</html>