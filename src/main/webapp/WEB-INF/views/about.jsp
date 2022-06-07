<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
String name = (String) request.getAttribute("name");
Integer rollNumber = (Integer) request.getAttribute("rollNumber");
Date date = (Date) request.getAttribute("date");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>
		Welcome to Mr.
		<%=name%></h1>
	<h2>
		Your roll number is
		<%=rollNumber%></h2>
	<h5>
		Time of entry
		<%=date%></h5>

</body>
</html>