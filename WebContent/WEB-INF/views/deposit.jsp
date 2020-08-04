<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deposit to Account</title>
</head>
<body>
	<div align="center">
        <h2>Deposit Amount</h2>
    </div>
    <div align="center">
       
        <div align="left">
           <form action="depositCustomer" method="POST" modelAttribute ="customer">
           
           <h4>Enter Mobile Number: <form:input path="customer.mobileNo" size="30" />
           <form:errors path="customer.mobileNo" /></h4>
           <h4>Enter Amount: <form:input path="customer.wallet.balance" size="30" />
           <form:errors path="customer.wallet.balance" /></h4><br>
           <input type="submit" value="Submit" />
           <input type="reset" value="Reset" />
           </form><br>
           <a href="./home"> Go back to Home</a> 
        </div>
    </div>
    </body>
</html>