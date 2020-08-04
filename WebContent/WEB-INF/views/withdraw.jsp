<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Withdraw Money</title>
</head>
<body>
	<div align="center">
        <h2>Withdraw Amount</h2>
    </div>
        <div align="left">
           <form action="withdrawCustomer" method="POST" modelAttribute ="customer">
           
           <h5>Enter Mobile Number: <form:input path="customer.mobileNo" size="30" />
           <form:errors path="customer.mobileNo" /></h5>
           <h5>Enter Amount: <form:input path="customer.wallet.balance" size="30" />
           <form:errors path="customer.wallet.balance" /></h5><br>
           <input type="submit" value="Submit" />
           <input type="reset" value="Reset" />
           </form><br>
           <a href="./home"> Go back to Home</a> 
        </div>
    
</body>
</html>