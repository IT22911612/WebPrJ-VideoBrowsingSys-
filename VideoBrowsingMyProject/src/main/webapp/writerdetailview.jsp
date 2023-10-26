<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Content Writer Details</title>
<style>
body {
	background-color: #f4f4f4;
	font-family: 'Arial', sans-serif;
	margin: 0;
}

nav {
	background-color: #ADD8E6;
	padding: 20px 0;
	text-align: center;
	width: 100%;
	position: fixed;
	top: 0;
	z-index: 1000;
	display: flex;
	justify-content: center;
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

.container {
	text-align: center;
	margin-top: 80px;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.user {
	padding: 20px;
	max-width: 800px;
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
}

.table {
	width: 100%;
	max-width: 100%;
	margin-bottom: 1rem;
	background-color: transparent;
}

.table td, .table th {
	padding: 1rem;
	vertical-align: top;
	border-top: 1px solid #dee2e6;
}

.table thead th {
	vertical-align: bottom;
	border-bottom: 2px solid #dee2e6;
}

.table tbody+tbody {
	border-top: 2px solid #dee2e6;
}

.btn {
	display: inline-block;
	font-weight: 400;
	color: #ffffff;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	background-color: #21a033;
	border: 1px solid #007bff;
	border-radius: 0.5rem;
	padding: 0.5rem 1rem;
	transition: background-color 0.3s ease;
}

.btn-info, .btn-danger {
	font-size: 14px;
}

.btn-block {
	width: 30%;
}

footer {
	background-color: rgba(51, 51, 51, 0.7);
	color: white;
	padding: 10px;
	text-align: center;
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>

</head>
<body>
	<nav>
		<a href="home.jsp">Home</a> <a href="aboutus.jsp">About Us</a> <a
			href="feedback.jsp">FeedBack</a> <a href="payforpremium.jsp">Payments</a>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="user mt-5">
					<h1 class="text-center">Profile</h1>
					<table class="table">
						<c:forEach var="cus" items="${writerDetails}">
							<c:set var="writerid" value="${cus.writerid}" />
							<!-- this line internally call to the get ID method in student class -->
							<c:set var="name" value="${cus.name}" />
							<c:set var="email" value="${cus.email}" />
							<c:set var="phone" value="${cus.phone}" />
							<c:set var="nic" value="${cus.nic}" />
							<c:set var="linkdin" value="${cus.linkdin}" />
							<c:set var="youtube" value="${cus.youtube}" />
							<c:set var="website" value="${cus.website}" />
							<tr>
								<td>Full Name</td>
								<td>${cus.name}</td>
							</tr>
							<tr>
								<td>Email</td>
								<td>${cus.email}</td>
							</tr>
							<tr>
								<td>Contact Number</td>
								<td>${cus.phone}</td>
							</tr>
							<tr>
								<td>NIC</td>
								<td>${cus.nic}</td>
							</tr>
							<tr>
								<td>Linkdin Profile URL</td>
								<td>${cus.linkdin}</td>
							</tr>

							<tr>
								<td>Youtube Channel</td>
								<td>${cus.youtube}</td>
							</tr>
							<tr>
								<td>Website / Portfolio</td>
								<td>${cus.website}</td>
							</tr>


						</c:forEach>
					</table>
					<br>
					<c:url value="writerupdate.jsp" var="writerupdate">
						<!-- navigate to the update page and show these details -->
						<c:param name="writerid" value="${writerid}" />
						<!-- ID is the variable name of set tag above -->
						<c:param name="name" value="${name}" />
						<c:param name="email" value="${email}" />
						<c:param name="phone" value="${phone}" />
						<c:param name="nic" value="${nic}" />
						<c:param name="linkdin" value="${linkdin}" />
						<c:param name="youtube" value="${youtube}" />
						<c:param name="website" value="${website}" />

					</c:url>
				</div>
			</div>
			<div class="col-md-4">
				<div class="side-section mt-5">



					<a href="${writerupdate}" class="btn btn-info btn-block">Edit
						Profile</a>

					<c:url value="writerdelete.jsp" var="writerdelete">
						<c:param name="writerid" value="${writerid}" />
						<!-- ID is the variable name of set tag above -->
						<c:param name="name" value="${name}" />
						<c:param name="email" value="${email}" />
						<c:param name="phone" value="${phone}" />
						<c:param name="nic" value="${nic}" />
						<c:param name="linkdin" value="${linkdin}" />
						<c:param name="youtube" value="${youtube}" />
						<c:param name="website" value="${website}" />
					</c:url>

					<a href="${writerdelete}" name="delete"
						class="btn btn-danger btn-block">Delete Profile</a>


				</div>
			</div>
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
	<footer
		style="background-color: rgba(51, 51, 51, 0.7); color: black; padding: 1px; text-align: center; position: fixed; bottom: 0; width: 100%;">
		<p>&copy; 2023 Video Browsing System. All rights reserved.</p>
	</footer>

</body>
</html>