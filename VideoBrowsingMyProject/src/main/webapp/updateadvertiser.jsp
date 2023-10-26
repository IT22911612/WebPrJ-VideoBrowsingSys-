<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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


	<%
   String companyName = request.getParameter("companyName");
   String contactPerson = request.getParameter("contactPerson");
   String email = request.getParameter("email");
   String phone = request.getParameter("phone");
   String messege  = request.getParameter("messege"); 

 %>

	<form action="updatead" method="post">
		<table>
			<tr>
				<td>Company Name</td>
				<td><input type="text" name="companyName"
					value="<%=companyName%>"></td>
			</tr>
			<tr>
				<td>Contact Person</td>
				<td><input type="text" name="contactPerson"
					value="<%=contactPerson%>"></td>
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
				<td>Message</td>
				<td><input type="text" name="messege" value="<%=messege%>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit"
					value="Update These"></td>
			</tr>
		</table>
	</form>
</html>
