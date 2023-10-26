<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f8f9fa; /* Lighter background color */
	margin: 0;
	padding: 20px;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	min-height: 100vh;
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

h1, h2 {
	text-align: center;
	font-family: 'Helvetica', sans-serif;
	color: #007bff; /* Change to a nice blue color */
	margin-bottom: 20px;
}

form {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	width: 300px;
	transition: transform 0.3s ease; /* Add a subtle transition */
	text-align: center; /* Center align the form content */
}

/* Style for the button */
.button_login {
	background-color: #28a745; /* Green color for submit button */
	color: #fff;
	cursor: pointer;
	transition: background-color 0.3s ease;
	padding: 15px; /* Increase padding to make it larger */
	border: none;
	border-radius: 6px;
	width: 100%; /* Make the button fill the width of the form */
}

.button_login:hover {
	background-color: #218838; /* Darker green on hover */
}

form:hover {
	transform: scale(1.02); /* Enlarge the form on hover */
}

label {
	display: block;
	margin-bottom: 8px;
	color: #555; /* Dim the label color */
}

input {
	width: 100%;
	margin-bottom: 15px;
	padding: 12px; /* Increase padding for better spacing */
	box-sizing: border-box;
	border: 1px solid #ced4da; /* Lighter border color */
	border-radius: 6px; /* Slightly round the corners */
	transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

input[type="submit"] {
	background-color: #28a745; /* Green color for submit button */
	color: #fff;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #218838; /* Darker green on hover */
}

input::placeholder {
	color: #999; /* Lighter placeholder text */
}

input:focus {
	outline: none;
	border: 1px solid #80bdff; /* Lighter border on focus */
	box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
	/* Add a subtle box shadow on focus */
}
</style>
<!-- Add this script inside the head tag of your HTML document -->

</head>
<body>
<body>
	<nav>
		<a href="home.jsp">Home</a> <a href="aboutus.jsp">About Us</a> <a
			href="feedback.jsp">FeedBack</a> <a href="payforpremium.jsp">Payments</a><a href="writerinsert.jsp">Content Creator</a><a href="advertisercreate.jsp">Advertiser</a>
	</nav>
	<div class="container">
		<h2>Sign In</h2>
		<hr>
		<form action="log" method="POST">

			<label for="username">Username</label> <input type="text" name="uid"
				placeholder="Enter your username"> <label for="password">Password</label>
			<input type="password" name="pass" placeholder="Enter your password">

			<button class="button_login" type="submit">Sign In</button>
		</form>
		<h5>
			Not Registered ? <a href="customerinsert.jsp">"Sign Up"</a>
		</h5>
	</div>
</body>
<footer
	style="background-color: rgba(51, 51, 51, 0.7); color: black; padding: 1px; text-align: center; position: fixed; bottom: 0; width: 100%;">
	<p>&copy; 2023 Video Browsing System. All rights reserved.</p>
</footer>

</body>
</html>
