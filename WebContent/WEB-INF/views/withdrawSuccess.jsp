<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Withdraw Success</title>
</head>
<body>
<h2>Transaction Success,</h2>
		<br>
		<h4>Transaction Success,Current balance is ${customer.wallet.balance}</h4>
		<br>
		<a href="./home"> Go back to Home</a> 
		<a href="./"> Logout</a>
		
</body>
</html>