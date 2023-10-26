<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Writer Search</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #fff;
	margin: 0;
	padding: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	/* This ensures that the form is centered vertically on the page */
}

nav {
	background-color: #ADD8E6; /* Light Blue */
	padding: 20px 0;
	text-align: center;
	width: 100%;
	position: fixed;
	top: 0;
	z-index: 1000;
	display: flex;
	justify-content: center; /* Center the navigation horizontally */
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
	max-width: 400px;
	margin: 20px auto;
	padding: 35px 45px 35px 35px;
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
	font-size: 16px;
}

input[type="text"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

button {
	width: 100%;
	padding: 10px;
	background-color: green;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

button:hover {
	background-color: #0056b3;
}

footer {
	background-color: rgba(51, 51, 51, 0.7);
	color: black;
	padding: 1px;
	text-align: center;
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>
	<nav>
		<a href="home.jsp">Home</a> <a href="aboutus.jsp">About Us</a> <a
			href="feedback.jsp">FeedBack</a> <a href="payforpremium.jsp">Payments</a>
	</nav>

	<div class="container01">

		<form action="viewwriter" method="post">
			<div class="view">


				<label for="id">Content Writer's NIC:</label> <input type="text"
					id="studentid" name="nic" required>
				<button type="submit" class="btn btn-primary btn-block btn-large">Show
					Writer Profile</button>

			</div>
		</form>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


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