<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
    <div align="center">
        <h2>Login</h2>
    </div>
    <div align="center">
        <h4>Enter Your Credentials</h4>
        <div align="left">
           <form action="loginCustomer" method="POST" modelAttribute ="customer">
        
           <h5>Mobile Number: <form:input path="customer.mobileNo" size="30" />
           <form:errors path="customer.mobileNo" /></h5>
     
           <input type="submit" value="Login" />
           <input type="reset" value="Reset" />
           </form>
        </div>
    </div>
</body>
</html>