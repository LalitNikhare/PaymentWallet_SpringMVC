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
        <h2>Registration</h2>
    </div>
    <div align="center">
        <h4>Enter Your details</h4>
        <div align="left">
           <form action="registerCustomer" method="POST" modelAttribute ="customer">
           	<h5>Name: 
           		<form:input path="customer.name" size="30" />
           		<form:errors path="customer.name" />
           	</h5>
           <h5>Mobile Number: <form:input path="customer.mobileNo" size="30" />
           <form:errors path="customer.mobileNo" /></h5>
           <h5>Initial Balance: <form:input path="customer.wallet.balance" size="30" />
           <form:errors path="customer.wallet.balance" /></h5><br>
           <input type="submit" value="Register" />
           <input type="reset" value="Reset" />
           </form>
        </div>
    </div>
</body>
</html>