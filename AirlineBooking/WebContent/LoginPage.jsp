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
input[type=password], select {
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
</style>
<link rel = "stylesheet" type="text/css" href="AirlineStyle.css">
<meta charset="ISO-8859-1">
<title>User Login</title>
</head>
<body>

<%! String message=""; %>
<% message=(String)request.getAttribute("key");%>
<%if(message==null){
		message="";
	}%>

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
	<form action="LoginServlet" method="post">
	<table cellspacing=30px>
		<tr>
			<%=message%>
			<td><label for="user ID">User ID </label> <br>
			<input type="text" id="username" name="userID" placeholder="Enter your User ID"/></td>
			<td><label for="password">Password </label> <br>
			<input type="password" id="password" name="password" placeholder="Enter your Password"/></td>
		</tr>
		<tr align="right">
			<td></td>
			<td><input class="button1" type="submit" name="login" value="login" /></td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>