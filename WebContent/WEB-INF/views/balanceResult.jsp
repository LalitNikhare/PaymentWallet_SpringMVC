<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Balance</title>
</head>
<body>
	<div>
		<h2>Welcome ${customer.name}</h2>
		<br>
		<h4>Your Balance is ${customer.wallet.balance}</h4>
		<a href="./home"> Go back to Home</a> 
		<a href="./"> Logout</a>

	</div>
</body>
</html>