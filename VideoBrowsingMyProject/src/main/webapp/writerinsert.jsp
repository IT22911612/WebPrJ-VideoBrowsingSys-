<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Content Writer</title>
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
	width: 80%;
	margin: 100px auto;
	/* Adjust the top margin to vertically center the form */
	padding: 30px;
	max-width: 600px;
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

input[type="text"], input[type="number"], input[type="email"], input[type="tel"],
	input[type="date"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

select#inquiry, select#subinquiry, select#faculty {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px; /* Added font size for select */
}

.error-message {
	color: red;
}

.custom-textarea {
	height: 80px;
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

hr {
	border: 0;
	border-top: 1px solid #ccc;
	margin: 20px 0;
}

#register-button {
	width: 100%;
	padding: 10px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

#register-button:hover {
	background-color: #0056b3;
}

#reset-button {
	margin-top: 10px;
	width: 100%;
	padding: 10px;
	background-color: #ccc;
	color: #000;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

#reset-button:hover {
	background-color: #999;
}

.btn-block-center {
	display: block;
	margin: auto;
	text-align: center;
}

.btn-block-center a {
	display: inline-block;
	font-size: 20px; /* Adjust the font size as needed */
	padding: 10px 10px;
	background-color: #28a745; /* Green color */
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
}

.btn-block-center a:hover {
	background-color: #218838; /* Darker green color on hover */
}
</style>
</head>
<body>
	<nav>
		<a href="home.jsp">Home</a> <a href="aboutus.jsp">About Us</a> <a
			href="feedback.jsp">FeedBack</a> <a href="payforpremium.jsp">Payments</a>
	</nav>

	<div class="container-fluid"></div>


	<div class="container01">
		<h1>Add Content Writer</h1>
		<form id="registration-form" action="insertWriter" method="post">
			<label for="name">Full Name</label> <input type="text" id="name"
				name="name" required placeholder="Full Name"> <label
				for="email">Email</label> <input type="email" id="email"
				name="email" required
				pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"
				placeholder="email@gmail.com"> <label for="contact">Contact
				Number</label> <input type="tel" id="contact" name="phone" required
				pattern="[0-9]+" inputmode="numeric" placeholder="EX:07********">

			<label for="nic">NIC</label> <input type="text" id="studentid"
				name="nic" required placeholder=""> <label for="linkdin">LinkedIn
				Profile URL</label> <input type="text" id="faculty" name="linkdin" required
				placeholder="https://linkedin.com/yourprofile"> <label
				for="youtube">YouTube Channel URL</label> <input type="text"
				name="youtube" id="faculty" required
				placeholder="https://youtube.com/yourchannel"> <label
				for="rating">Website / Portfolio URL</label> <input type="text"
				id="rating" name="website" required
				placeholder="https://yourwebsite.com">

			<button type="submit" name="submit" id="register-button">Submit</button>
			<button type="reset" id="reset-button">Reset</button>
		</form>
		<br>
		<div class="btn-block-center">
			<a href="writersearch.jsp">View Profiles</a>
		</div>

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