<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

.container01 {
	max-width: 600px;
	margin: 20px auto;
	padding: 35px;
	background-color: #fff;
	border-radius: 10px; /* Increased border-radius for a softer look */
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
}

h1 {
	text-align: center;
	color: #007bff; /* Blue color for the heading */
}

label {
	display: block;
	margin-bottom: 10px;
	color: #333; /* Darker color for labels */
}

input[type="text"], input[type="password"], input[type="email"], input[type="tel"],
	input[type="date"] {
	width: 100%;
	padding: 12px; /* Increased padding for better visibility and touch */
	margin-bottom: 15px; /* More space between input fields */
	border: 1px solid #ccc;
	border-radius: 8px;
}

button {
	width: 100%;
	padding: 12px;
	background-color: #21a033;
	color: #fff;
	border: none;
	border-radius: 8px;
	cursor: pointer;
	transition: background-color 0.3s ease; /* Smooth transition effect */
}

button:hover {
	background-color: #0056b3;
}

/* Add some styling for the checkbox */
.checkbox-label {
	display: flex;
	align-items: center;
	color: #333;
}

input[type="checkbox"] {
	margin-right: 5px;
}

.error-message {
	color: red;
}

/* Rounded corners for the form inputs */
input[type="text"]:focus, input[type="password"]:focus, input[type="email"]:focus,
	input[type="tel"]:focus, input[type="date"]:focus {
	outline: none;
	box-shadow: 0 0 10px rgba(0, 123, 255, 0.6);
}

/* Add a subtle border on focus for better UX */
input[type="text"]:focus, input[type="password"]:focus, input[type="email"]:focus,
	input[type="tel"]:focus, input[type="date"]:focus, button:focus {
	outline: none;
	border: 1px solid #007bff;
}

.container01 form {
	position: relative; /* Added relative positioning */
}

.container01 form:before {
	content: "";
	position: absolute;
	top: -20px;
	left: 50%;
	width: 40px;
	height: 40px;
	background: #007bff;
	border-radius: 50%;
	transform: translateX(-50%);
	z-index: 1;
}
</style>


<% //catch the details come from url in useraccount page
		String writerid = request.getParameter("writerid");//id is the parameter name of ID in studentprofile page inside url tag
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String nic = request.getParameter("nic");
		String linkdin = request.getParameter("linkdin");
		String youtube = request.getParameter("youtube");
		String website = request.getParameter("website");
		
	%>
<div class="container01">
	<h1>Update Profile</h1>
	<form id="registration-form" action="updatewriter" method="post">


		<input type="text" id="id" name="writerid" value="<%= writerid %>"
			hidden=""> <label for="id">NIC</label> <input type="text"
			id="id" name="nic" value="<%= nic %>" readonly> <label
			for="name">Full Name</label> <input type="text" id="name" name="name"
			value="<%= name %>" required> <label for="email">Email</label>
		<input type="email" id="email" name="email" value="<%= email %>"
			required> <label for="contact">Contact Number</label> <input
			type="tel" id="contact" name="phone" value="<%= phone %>" required
			pattern="[0-9]+" inputmode="numeric"> <label for="address">Linkdin
			Profile URL</label> <input type="text" id="address" name="linkdin"
			value="<%= linkdin %>" required> <label for="username">Youtube
			Channel</label> <input type="text" id="username" name="youtube"
			value="<%= youtube %>" required> <label for="username">Website
			/ Portfolio</label> <input type="text" id="username" name="website"
			value="<%= website %>" required>


		<button type="submit" name="sumbit" id="register-button">Update
			Profile</button>

	</form>
</div>


<!-- Start Script -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/templatemo.js"></script>
<script src="js/custom.js"></script>
<!-- End Script -->
</body>
</html>