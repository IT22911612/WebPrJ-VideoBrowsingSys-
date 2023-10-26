<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Feedback Form</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	height: 100vh;
}

nav {
	background-color: #ADD8E6;
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

form {
	width: 100%;
	max-width: 400px;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1), 0 5px 15px rgba(0, 0, 0, 0.2);
	transition: box-shadow 0.3s ease-in-out;
}

form:hover {
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.3), 0 8px 20px rgba(0, 0, 0, 0.4);
}

h1 {
	color: #007bff; /* Blue color */
	text-align: center;
	margin-top: 0; /* Remove default margin */
}

label {
	display: block;
	margin-bottom: 8px;
	color: #333;
}

input, textarea {
	width: 100%;
	padding: 10px;
	margin-bottom: 16px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
}

textarea {
	height: 100px;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%; /* Make button full width */
}

button:hover {
	background-color: #45a049;
}

/* Optional: Add some spacing and styling for better readability */
form>* {
	margin-bottom: 16px;
}
</style>
<script>
        function showSuccessMessage() {
            alert('Feedback submitted successfully!');
        }
    </script>
</head>
<body>
	<nav>
		<a href="home.jsp">Home</a> <a href="aboutus.jsp">About Us</a> <a
			href="feedback.jsp">FeedBack</a> <a href="payforpremium.jsp">Payments</a>
	</nav>



	<h1>Feedback for VidNet</h1>

	<form action="ok" method="post">
		<label for="name">Name:</label> <input type="text" id="name"
			name="name" required> <label for="email">Email:</label> <input
			type="text" id="email" name="email" required> <label
			for="feedback">Feedback:</label> <input type="text" name="feedback"
			required>

		<button type="submit">Submit Feedback</button>
	</form>

	<footer
		style="background-color: rgba(51, 51, 51, 0.7); color: black; padding: 1px; text-align: center; position: fixed; bottom: 0; width: 100%;">
		<p>&copy; 2023 Video Browsing System. All rights reserved.</p>
	</footer>


</body>
</html>
