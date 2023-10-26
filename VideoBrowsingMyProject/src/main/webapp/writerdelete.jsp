<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

nav {
	background-color: #ADD8E6; /* Light Blue */
	padding: 20px 0;
	text-align: center;
	width: 100%;
	position: fixed;
	top: 0;
	z-index: 1000;
}

nav a {
	color: black;
	text-decoration: none;
	margin: 0 15px;
	font-weight: bold;
	font-size: 20px;
}

nav a:hover {
	border-bottom: 2px solid #007bff;
}

.container01 {
	max-width: 600px;
	margin: 20px auto; /* Added 20px top and bottom margin */
	padding: 35px 45px 35px 35px; /* added 40px of padding to the left */
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

h1 {
	text-align: center;
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="text"], input[type="password"], input[type="email"], input[type="tel"],
	input[type="date"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

button {
	width: 100%;
	padding: 10px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button:hover {
	background-color: #0056b3;
}

.checkbox-label {
	display: flex;
	align-items: center;
}

input[type="checkbox"] {
	margin-right: 5px;
}

.error-message {
	color: red;
}

.logo-image {
	width: 100px; /* Set the width as per your logo size */
	height: auto; /* Maintain the aspect ratio */
}

.navbar-brand {
	position: relative;
	z-index: 2;
}

.nav-icon {
	position: relative;
}

.navbar-toggler {
	position: relative;
	z-index: 3; /* Ensure it's above other elements */
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

<body>
	<nav>
		<a href="home.jsp">Home</a> <a href="aboutus.jsp">About Us</a> <a
			href="feedback.jsp">FeedBack</a> <a href="payforpremium.jsp">Payments</a>
	</nav>
	<div class="container01">
		<h1>Want to delete this Content Writer?</h1>
		<form id="registration-form" action="deletewriter" method="post">

			<input type="text" id="id" name="writerid" value="<%= writerid %>"
				hidden=""> <input type="text" id="name" name="name"
				value="<%= name %>" readonly>

			<button type="submit" name="sumbit" id="register-button"
				class="btn btn-danger btn-block">Delete</button>

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

	<footer
		style="background-color: rgba(51, 51, 51, 0.7); color: black; padding: 1px; text-align: center; position: fixed; bottom: 0; width: 100%;">
		<p>&copy; 2023 Video Browsing System. All rights reserved.</p>
	</footer>

</body>
</html>