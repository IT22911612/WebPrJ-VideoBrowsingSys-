<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Details</title>

<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
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
	color: #333;
}

table {
	width: 80%; /* Adjusted width for better readability */
	margin: 20px auto;
	border-collapse: collapse;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

td {
	padding: 15px;
	border: 1px solid #ddd;
	text-align: left;
	font-size: 16px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #e0e0e0;
}

a {
	text-decoration: none;
	display: inline-block;
	margin: 10px;
}

input[type="button"] {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
	transition: background-color 0.3s ease;
}

input[type="button"]:hover {
	background-color: #45a049;
}
</style>

</head>
<body>
	<nav>
		<a href="home.jsp">Home</a> <a href="aboutus.jsp">About Us</a> <a
			href="feedback.jsp">FeedBack</a> <a href="payforpremium.jsp">Payments</a>
	</nav>
	<h1>Customer Details</h1>
	<table>

		<c:forEach var="cus" items="${cusDetails}">

			<c:set var="id" value="${cus.id}" />
			<c:set var="name" value="${cus.name}" />
			<c:set var="email" value="${cus.email}" />
			<c:set var="phone" value="${cus.phone}" />
			<c:set var="username" value="${cus.username}" />
			<c:set var="password" value="${cus.password}" />

			<tr>
				<td>User ID</td>
				<td>${cus.id}</td>
			</tr>

			<tr>
				<td>User Name</td>
				<td>${cus.name}</td>
			</tr>

			<tr>
				<td>User Email</td>
				<td>${cus.email}</td>
			</tr>

			<tr>
				<td>User Phone</td>
				<td>${cus.phone}</td>
			</tr>
		</c:forEach>
	</table>

	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>

	<a href="${cusupdate}"> <input type="button" name="update"
		value="Update Data">
	</a>

	<br>
	<c:url value="deletecustomer.jsp" var="cusdelete">

		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${cusdelete}"> <input type="button" name="delete"
		value="Delete My Data">
	</a>

	<div>
		<a class="btn btn-danger btn-sm" href="logout">Log Out</a>
	</div>

	<footer
		style="background-color: rgba(51, 51, 51, 0.7); color: black; padding: 1px; text-align: center; position: fixed; bottom: 0; width: 100%;">
		<p>&copy; 2023 Video Browsing System. All rights reserved.</p>
	</footer>


</body>
</html>
