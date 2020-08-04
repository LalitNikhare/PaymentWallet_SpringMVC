<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PaymentWallet</title>
</head>
<body>
	<div align="center">
        <h2>Welcome ${customer.name}</h2>
    </div>
    <div align="center">
        <div align="left">    
            <a href="check_balance"><h4>1. Show balance in account</h4></a>

            <a href="deposit"><h4>2. Deposit money into account</h4></a>
            
            <a href="withdraw"><h4>3. Withdraw money from account</h4></a>
            
            <a href="transfer"><h4>4. Transfer money from one account to another</h4></a>
            
            <a href="./"> Logout</a>
        </div>
    </div>
</body>
</html>