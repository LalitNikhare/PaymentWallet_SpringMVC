<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transfer Money</title>
</head>
<body>
  <div align="center">
        <h2>Transfer Money</h2>
    </div>
    	<div align="left">
           <form action="transferCustomer" method="POST" modelAttribute ="customer">
<!--            	<h5>Enter Your Mobile Number:  -->
<%--            		<form:input path="customer.name" size="30" /> --%>
<%--            		<form:errors path="customer.name" /> --%>
<!--            	</h5> -->
<!--            <h5>Enter Mobile number To Transfer Amount:  -->
<%--            		<form:input path="customer.mobileNo" size="30" /> --%>
<%--           	    <form:errors path="customer.mobileNo" /></h5> --%>
<%--            <h5>Amount to transfer: <form:input path="customer.wallet.balance" size="30" /> --%>
<%-- 				<form:errors path="customer.wallet.balance" /></h5><br> --%>
           <h5>Enter Your Mobile Number:
           		<input type="text" name="mobile1" size="30"/>
           </h5>
           <h5>Enter Mobile number To Transfer Amount:
           		<input type="text" name="mobile2" size="30"/>
           </h5>
           <h5>Amount to transfer:
           		<input type="number" name="amount" size="30"/>
           </h5>
           <input type="submit" value="Submit" />
           <input type="reset" value="Reset" />
           </form><br>
           <a href="./home"> Go back to Home</a> 
        </div>
</body>
</html>