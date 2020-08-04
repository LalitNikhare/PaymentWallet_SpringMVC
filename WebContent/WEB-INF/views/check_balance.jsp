<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Balance Check</title>
</head>
<body>
    <div align="center">
        <h2>Balance Enquiry</h2>
    </div>
        <div align="left">
           <form action="showBalance" method="POST" modelAttribute ="customer">
           <h5>Enter Mobile Number: <form:input path="customer.mobileNo" size="30" />
           <form:errors path="customer.mobileNo" /></h5>
           <input type="submit" value="Submit" />
           <input type="reset" value="Reset" />
           </form><br>
           <a href="./home"> Go back to Home</a> 

        </div>
</body>
</html>