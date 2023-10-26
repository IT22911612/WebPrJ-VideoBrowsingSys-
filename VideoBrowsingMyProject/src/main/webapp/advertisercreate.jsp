<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Advertiser Form</title>

<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f8f9fa;
	margin: 0;
	padding: 20px;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	min-height: 100vh;
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

h1 {
	text-align: center;
	font-family: 'Helvetica', sans-serif;
	color: #007bff;
	margin-bottom: 20px;
}

form {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	width: 300px;
	transition: transform 0.3s ease;
}

form:hover {
	transform: scale(1.02);
}

label {
	display: block;
	margin-bottom: 8px;
	color: #555;
}

input {
	width: 100%;
	margin-bottom: 15px;
	padding: 12px;
	box-sizing: border-box;
	border: 1px solid #ced4da;
	border-radius: 6px;
	transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

input[type="submit"] {
	background-color: #28a745;
	color: #fff;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #218838;
}

input::placeholder {
	color: #999;
}

input:focus {
	outline: none;
	border: 1px solid #80bdff;
	box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}
</style>

<!-- Add this script block after your style block -->
<script>
	    function validateForm() {
	        var companyName = document.forms["advertiserForm"]["companyName"].value;
	        var contactPerson = document.forms["advertiserForm"]["contactPerson"].value;
	        var email = document.forms["advertiserForm"]["email"].value;
	        var phone = document.forms["advertiserForm"]["phone"].value;
	
	        if (companyName === "" || contactPerson === "" || email === "" || phone === "") {
	            alert("All fields must be filled out");
	            return false;
	        }
	
	        // Assuming the form submission is successful, show a success message
	        alert("Form submitted successfully!");
	
	        // You can also customize the success message using a modal or other UI elements
	        // For simplicity, I'm using the alert function in this example.
	        return true; // This allows the form to be submitted
	    }
	</script>
<!-- Add this script block after your previous script block -->
<script>
	    function validateForm() {
	        var companyName = document.forms["advertiserForm"]["companyName"].value;
	        var contactPerson = document.forms["advertiserForm"]["contactPerson"].value;
	        var email = document.forms["advertiserForm"]["email"].value;
	        var phone = document.forms["advertiserForm"]["phone"].value;
	
	        if (companyName === "" || contactPerson === "" || email === "" || phone === "") {
	            alert("All fields must be filled out");
	            return false;
	        }
	
	        // Assuming the form submission is successful, show a success message
	        alert("Form submitted successfully!");
	
	        // You can also customize the success message using a modal or other UI elements
	        // For simplicity, I'm using the alert function in this example.
	        return true; // This allows the form to be submitted
	    }
	</script>

</head>
<body>

	<!-- Navigation Bar -->
	<nav>
		<a href="home.jsp">Home</a> <a href="aboutus.jsp">About Us</a> <a
			href="feedback.jsp">FeedBack</a> <a href="payforpremium.jsp">Payments</a>
	</nav>

	<h1>Form for Advertiser Request</h1>

	<form method="post" action="done" onsubmit="return validateForm()">
		<label for="companyName">Company Name :</label> <input type="text"
			class="ename" name="companyName" placeholder="Enter company name" />

		<label for="contactPerson">Contact Person :</label> <input type="text"
			class="contactPerson" name="contactPerson"
			placeholder="Enter contact person" /> <label for="email">Email
			:</label> <input type="email" class="email" name="email"
			placeholder="Enter email" /> <label for="phone">Phone :</label> <input
			type="text" class="phone" name="phone" placeholder="Enter phone" />

		<label for="message">Message :</label> <input type="text"
			class="message" name="message" placeholder="Enter your message" /> <input
			type="submit" value="Submit">
	</form>
	<footer
		style="background-color: rgba(51, 51, 51, 0.7); color: black; padding: 1px; text-align: center; position: fixed; bottom: 0; width: 100%;">
		<p>&copy; 2023 Video Browsing System. All rights reserved.</p>
	</footer>

</body>
</html>
