<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Advertiser Data Delete</title>
<style>
body {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	background-color: #f4f4f4; /* Set your desired background color */
}

form {
	width: 50%;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
	width: 100%;
}

td {
	padding: 10px;
}

input[type="text"] {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #4caf50; /* Green submit button color */
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

h1 {
	text-align: center;
	color: #333; /* Set your desired heading color */
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



	<form action="deletead" method="post">
		<h1>User Account Delete</h1>
		<table>
			<tr>
				<td>Company Name</td>
				<td><input type="text" name="companyName"
					value="<%= companyName %>"></td>
			</tr>
			<tr>
				<td>Contact Person</td>
				<td><input type="text" name="contactPerson"
					value="<%= contactPerson %>"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="<%= email %>"></td>
			</tr>
			<tr>
				<td>Phone number</td>
				<td><input type="text" name="phone" value="<%= phone %>"></td>
			</tr>
			<tr>
				<td>Message</td>
				<td><input type="text" name="messege" value="<%= messege %>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit"
					value="Delete"></td>
			</tr>
		</table>
	</form>

</body>
</html>