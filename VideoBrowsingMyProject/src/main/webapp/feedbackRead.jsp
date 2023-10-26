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
    <title>FeedBack</title>
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

    table {
        width: 80%;
        border-collapse: collapse;
        margin-top: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #007bff;
        color: #fff;
    }

    tr:hover {
        background-color: #f5f5f5;
    }

    input[type="button"] {
        padding: 5px px;
        font-size: 16px;
        background-color: #21a033;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    footer {
        background-color: rgba(51, 51, 51, 0.7);
        color: black;
        padding: 1px;
        text-align: center;
        position: fixed;
        bottom: 0;
        width: 100%;
    }
</style>

  
  </head>
  <body>
   <nav>
        <a href="home.jsp">Home</a>
        <a href="aboutus.jsp">About Us</a>
        <a href="feedback.jsp">FeedBack</a>
        <a href="payforpremium.jsp">Payments</a>
    </nav>
    <h1 class="hname">Feedback Profile</h1>
   <table>
  
        <c:forEach var="fd" items="${fdDetails}">
        
        <c:set var="name" value = "${fd.name}"/>
        <c:set var="email" value = "${fd.email}"/>
        <c:set var="feedback" value = "${fd.feedback}"/>
        
      
            <tr>
                <td>Name</td>
                <td>${fd.name}</td>
            </tr>
            
            <tr>
                <td>Email</td>
                <td>${fd.email}</td>
            </tr>
            
            <tr>
                <td>Feedback</td>
                <td>${fd.feedback}</td>
            </tr>

        </c:forEach>
    </table>
     <c:url value="updatefeedback.jsp" var="fdupdate">
       <c:param name = "name" value="${name}"/>
       <c:param name = "email" value="${email}"/>
       <c:param name = "feedback" value="${feedback}"/>
    </c:url>
    
    <a href="${fdupdate}">
    <input type="button" name="update" value="Update Data">
    </a>
    
    <br>
    <c:url value="deletefeedback.jsp" var="fddelete">
    
       <c:param name = "name" value="${name}"/>
       <c:param name = "email" value="${email}"/>
       <c:param name = "feedback" value="${email}"/>
     </c:url>
     <a href="${fddelete}">
    <input type="button" name="delete" value="Delete My Data">
    </a>
    <footer style="background-color: rgba(51, 51, 51, 0.7); color: black; padding: 1px; text-align: center; position: fixed; bottom: 0; width: 100%;">
    <p>&copy; 2023 Video Browsing System. All rights reserved.</p>
</footer>
    
    
  </body>
</html>
    