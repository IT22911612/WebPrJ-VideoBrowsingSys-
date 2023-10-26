<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Create User</title>
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

h1 {
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
<script>
  document.addEventListener('DOMContentLoaded', function () {
    const form = document.querySelector('form');

    form.addEventListener('submit', function (event) {
      const nameInput = document.querySelector('input[name="name"]');
      const emailInput = document.querySelector('input[name="email"]');
      const phoneInput = document.querySelector('input[name="phone"]');
      const uidInput = document.querySelector('input[name="uid"]');
      const pswInput = document.querySelector('input[name="psw"]');

      if (!validateInput(nameInput, 'Name is required.') ||
          !validateInput(emailInput, 'Email is required.') ||
          !validateInput(phoneInput, 'Phone Number is required.') ||
          !validateInput(uidInput, 'Username is required.') ||
          !validateInput(pswInput, 'Password is required.')) {
        event.preventDefault(); // Prevent form submission if validation fails
      }
    });

    function validateInput(input, errorMessage) {
      const value = input.value.trim();
      const isValid = value !== '';

      if (!isValid) {
        alert(errorMessage);
        input.focus();
      }

      return isValid;
    }
  });
</script>
<script>document.addEventListener('DOMContentLoaded', function () {
	  const form = document.querySelector('form');

	  form.addEventListener('submit', function (event) {
	    const nameInput = document.querySelector('input[name="name"]');
	    const emailInput = document.querySelector('input[name="email"]');
	    const phoneInput = document.querySelector('input[name="phone"]');
	    const uidInput = document.querySelector('input[name="uid"]');
	    const pswInput = document.querySelector('input[name="psw"]');

	    if (!validateInput(nameInput, 'Name is required.') ||
	        !validateInput(emailInput, 'Email is required.') ||
	        !validateInput(phoneInput, 'Phone Number is required.') ||
	        !validateInput(uidInput, 'Username is required.') ||
	        !validatePassword(pswInput)) {
	      event.preventDefault(); // Prevent form submission if validation fails
	    }
	  });

	  function validateInput(input, errorMessage) {
	    const value = input.value.trim();
	    const isValid = value !== '';

	    if (!isValid) {
	      alert(errorMessage);
	      input.focus();
	    }

	    return isValid;
	  }

	  function validatePassword(input) {
	    const value = input.value.trim();
	    const isValid = value.length >= 8; // You can add more complex checks as needed

	    if (!isValid) {
	      alert('Password must be at least 8 characters long.');
	      input.focus();
	    }

	    return isValid;
	  }
	});
</script>

</head>
<body>
	<nav>
		<a href="home.jsp">Home</a> <a href="aboutus.jsp">About Us</a> <a
			href="feedback.jsp">FeedBack</a> <a href="payforpremium.jsp">Payments</a>
	</nav>


	<h1>Registration for the VidNet</h1>

	<form action="insert" method="post">
		<label for="name">Name</label> <input type="text" name="name"
			placeholder="Enter your name"> <label for="email">Email</label>
		<input type="text" name="email" placeholder="Enter your email">

		<label for="phone">Phone Number</label> <input type="text"
			name="phone" placeholder="Enter your phone number"> <label
			for="uid">User name</label> <input type="text" name="uid"
			placeholder="Enter your username"> <label for="psw">Password</label>
		<input type="password" name="psw" placeholder="Enter your password">

		<input type="submit" name="submit" value="Create Customer">
	</form>

	<footer
		style="background-color: rgba(51, 51, 51, 0.7); color: black; padding: 1px; text-align: center; position: fixed; bottom: 0; width: 100%;">
		<p>&copy; 2023 Video Browsing System. All rights reserved.</p>
	</footer>

</body>
</html>
