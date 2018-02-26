<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.travelbyair.pojoclasses.User" %>
<%@page import="com.travelbyair.pojoclasses.FlightInfo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>
	input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=number], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=date], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: rgba(255, 87, 51,1);
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 10px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

input[type=button] {
    width: 100%;
    background-color: rgba(255, 87, 51,1);
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 10px;
    cursor: pointer;
}

input[type=button]:hover {
    background-color: #45a049;
}

</style>
<link rel = "stylesheet" type="text/css" href="AirlineStyle.css">
<meta charset="ISO-8859-1">
<title>Email Confirmation</title>
</head>
<body>
<%!User userloggedin; %>
<% userloggedin= (User)session.getAttribute("userlogin");%>


<div style="margin:20px; margin-left:50px; width:25%; display: inline;">
	<img src="images/logo.jpg">
</div>

<div style="display:inline;" id="navigation">
	<ul>
		<li><a href="HomePage1.jsp">Home</a></li>
		<li><a href="LoginPage.jsp">Sign in</a></li>
		<li><a href="Registration.jsp">Sign Up</a></li>
		<li><a href="Footer.html">Contact Us</a></li>
	</ul>
</div>

<div class="alphared whitetext">
	<form action="LoginServlet2" method="POST">
	<table style="font-size:150%;" cellspacing=20px align="center">
		<tr>
			<td><label for="coninfo">Contact Information </label> <br>
			<input type="text" id="coninfo" name="coninfo" placeholder="enter e-mail address"/></td>
		</tr>
		<tr>
			<td><a href="Registration2.jsp"><input class="button1" type="button" name="Guest" value="Cotinue as Guest"/></a></td>
			<td>Or</td>
			<td><a href="LoginPage.jsp"><input class="button1" type="submit" name="login" value="Login"/></a></td>
		</tr>
	</table>
	</form>
</div>


</body>
</html>