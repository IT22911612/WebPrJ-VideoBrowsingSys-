<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Data</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
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

form {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
	width: 100%;
}

td {
	padding: 8px;
}

input {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
	margin-bottom: 10px;
}

input[type="submit"] {
	background-color: #4caf50;
	color: white;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<nav>
		<a href="home.jsp">Home</a> <a href="aboutus.jsp">About Us</a> <a
			href="feedback.jsp">FeedBack</a> <a href="payforpremium.jsp">Payments</a>
	</nav>


	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String userName = request.getParameter("uname");
	String password = request.getParameter("pass");
	%>

	<form action="update" method="post">
		<table>
			<tr>
				<td>Customer ID</td>
				<td><input type="text" name="cusid" value="<%=id%>" readonly></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" value="<%=name%>"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="<%=email%>"></td>
			</tr>
			<tr>
				<td>Phone number</td>
				<td><input type="text" name="phone" value="<%=phone%>"></td>
			</tr>
			<tr>
				<td>User name</td>
				<td><input type="text" name="uname" value="<%=userName%>"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="pass" value="<%=password%>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit"
					value="Update My Data"></td>
			</tr>
		</table>
	</form>
	<footer
		style="background-color: rgba(51, 51, 51, 0.7); color: black; padding: 1px; text-align: center; position: fixed; bottom: 0; width: 100%;">
		<p>&copy; 2023 Video Browsing System. All rights reserved.</p>
	</footer>
</html>
