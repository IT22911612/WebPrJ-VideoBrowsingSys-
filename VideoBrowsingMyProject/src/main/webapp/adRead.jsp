<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>View AD Request</title>

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
	color: #007bff;
	margin-bottom: 20px;
}

#etable {
	width: 80%;
	margin-top: 20px;
	border-collapse: collapse;
}

#etable th, #etable td {
	border: 1px solid #ddd;
	padding: 12px;
	text-align: left;
}

#etable th {
	background-color: #007bff;
	color: #fff;
}

#etable tr:nth-child(even) {
	background-color: #e6f7ff; /* Light Blue */
}

#etable tr:nth-child(odd) {
	background-color: #d4edda; /* Light Green */
}

a {
	text-decoration: none;
	color: #007bff;
	margin-top: 10px;
}

.input-container {
	display: flex;
	gap: 10px;
	margin-top: 10px;
}

input[type="button"] {
	background-color: #28a745; /* Green */
	color: #fff;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="button"]:hover {
	background-color: #218838; /* Darker Green on Hover */
}
</style>

</head>
<body>
	<nav>
		<a href="home.jsp">Home</a> <a href="aboutus.jsp">About Us</a> <a
			href="feedback.jsp">FeedBack</a> <a href="payforpremium.jsp">Payments</a>
	</nav>
	<h1 class="hname">Advertiser Profile</h1>
	<table>

		<c:forEach var="ad" items="${adDetails}">

			<c:set var="companyName" value="${ad.companyName}" />
			<c:set var="contactPerson" value="${ad.contactPerson}" />
			<c:set var="email" value="${ad.email}" />
			<c:set var="phone" value="${ad.phone}" />
			<c:set var="messege" value="${ad.messege}" />


			<tr>
				<td>companyName</td>
				<td>${ad.companyName}</td>
			</tr>

			<tr>
				<td>contactPerson</td>
				<td>${ad.contactPerson}</td>
			</tr>

			<tr>
				<td>AD Email</td>
				<td>${ad.email}</td>
			</tr>

			<tr>
				<td>AD Phone</td>
				<td>${ad.phone}</td>
			</tr>
			<tr>
				<td>Message</td>
				<td>${ad.messege}</td>
			</tr>
		</c:forEach>
	</table>

	<c:url value="updateadvertiser.jsp" var="adupdate">
		<c:param name="companyName" value="${companyName}" />
		<c:param name="contactPerson" value="${contactPerson}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="messege" value="${messege}" />
	</c:url>

	<a href="${adupdate}"> <input type="button" name="update"
		value="Update Data">
	</a>

	<br>
	<c:url value="deleteadvertiser.jsp" var="addelete">

		<c:param name="companyName" value="${companyName}" />
		<c:param name="contactPerson" value="${contactPerson}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="messege" value="${messege}" />
	</c:url>
	<a href="${addelete}"> <input type="button" name="delete"
		value="Delete My Data">
	</a>

	<footer
		style="background-color: rgba(51, 51, 51, 0.7); color: black; padding: 1px; text-align: center; position: fixed; bottom: 0; width: 100%;">
		<p>&copy; 2023 Video Browsing System. All rights reserved.</p>
	</footer>


</body>
</html>

<!-- <table id="etable">
      <tr>
        <th>Company Name</th>
        <th>ContactPerson</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Message</th>
      </tr>
       <c:forEach var="adv" items = "${adDetails}">
      	 <tr>
        	<td>${adv.companyName}</td>
            <td>${adv.contactPerson}</td>
            <td>${adv.email}</td>
            <td>${adv.phone}</td>            
            <td>${adv.messege}</td>
      	</tr>                
       </c:forEach>
           
    </table>
    
     <c:url value="updateadvertiser.jsp" var="advupdate">
 
       <c:param name = "companyName" value="${companyName}"/>
       <c:param name = "contactPerson" value="${contactPerson}"/>
       <c:param name = "email" value="${email}"/>
       <c:param name = "phone" value="${phone}"/>
       <c:param name = "messege" value="${messege}"/>
    </c:url>
     
    <a href="${advupdate}">
    <input type="button" name="update" value="Update Data">
    </a>
    
    <br>
    <c:url value="deleteadvertiser.jsp" var="advdelete">
    

       <c:param name = "companyName" value="${companyName}"/>
       <c:param name = "contactPerson" value="${contactPerson}"/>
       <c:param name = "email" value="${email}"/>
       <c:param name = "phone" value="${phone}"/>
       <c:param name = "messege" value="${messege}"/>
     </c:url>
     <a href="${advdelete}">
    <input type="button" name="delete" value="Delete My Data">
    </a>
    
    <footer style="background-color: rgba(51, 51, 51, 0.7); color: black; padding: 1px; text-align: center; position: fixed; bottom: 0; width: 100%;">
    <p>&copy; 2023 Video Browsing System. All rights reserved.</p>
</footer>
    
    
  </body>
</html>-->
