<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<style>
	
		body {
        	background-image: url('images/HomeBackground.png');
        	background-size: cover;
        	background-position: center;
        	background-attachment: fixed; /* Keeps the background fixed */
    	}
    	
	</style>
	
</head>
<body>
	
	<div class="container col-md-5 mt-5 mb-5">
		<div class="card">
			<div class="card-body">

				<form action="RegisterServlet" method="post">
				
					<caption>
						
						<h2> Sign Up </h2>
						
					</caption>
				
				<input type="hidden" name="oriName" value="" />
				
				<fieldset class="form-group">
				
					<label>User Name</label> <input type="text" value="" class="form-control" name="userName" required="required">
				
				</fieldset>
				
				<fieldset class="form-group">
				
					<label>Password</label> <input type="text" value="" class="form-control" name="password">
					
				</fieldset>
				
				<fieldset class="form-group">
				
					<label>Email Address</label> <input type="text"value="" class="form-control" name="email">
					
				</fieldset>
				
				<fieldset class="form-group">
				
					<label>Postal Code</label> <input type="text"value="" class="form-control" name="pc">

					
				</fieldset>

				
					<label>Gender</label>
	
				        <div class="gender-options">
				        
					        <label>
					            <input type="radio" name="gender" value="male">
					            Male
					        </label>
					        
					        <label>
					            <input type="radio" name="gender" value="female">
					            Female
					        </label>
					        
					        <label>
					            <input type="radio" name="gender" value="other">
					            Other
					        </label>
					        
    					</div>

				</fieldset>
				
				<button type="submit" class="btn btn-success">Save</button>
				
				</form>
			</div>
		</div>
	</div>
	
	<%@ include file="Footer.jsp" %>
	
</body>
</html>