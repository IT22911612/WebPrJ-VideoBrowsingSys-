<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account Delete</title>
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
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String phone = request.getParameter("phone");
   String userName  = request.getParameter("uname");
   String password  = request.getParameter("pass"); 
 %>



	<form action="delete" method="post">
		<h1>User Account Delete</h1>
		<table>
			<tr>
				<td>Customer ID</td>
				<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" value="<%= name %>" readonly></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="<%= email %>"
					readonly></td>
			</tr>
			<tr>
				<td>Phone number</td>
				<td><input type="text" name="phone" value="<%= phone %>"
					readonly></td>
			</tr>
			<tr>
				<td>User name</td>
				<td><input type="text" name="uname" value="<%= userName %>"
					readonly></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" name="submit"
					value="Delete My Account"></td>
			</tr>
		</table>
	</form>

</body>
</html>