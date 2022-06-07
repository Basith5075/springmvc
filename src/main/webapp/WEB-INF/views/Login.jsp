<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Login Page</h1>
	<h2>Please Enter the Email Address</h2>

	<%
	String name = (String) request.getAttribute("name");
	%>

	<h3>
		Welcome Mr.
		<%=name%>
	</h3>
	<h3>
		ID =
		<%=request.getAttribute("id")%>
	</h3>

	<h4>Friends List</h4>

	<%
	List<String> friends = (List<String>) request.getAttribute("friends");

	for (String s : friends) {
	%>
	<h6><%=s%></h6>

	<%
	}
	%>

	<hr>
	<h1>Login Page</h1>
	<h2>Please Enter the Email Address</h2>

	<h3>
		Welcome Mr.
		${name}
	</h3>
	<h3>
		ID =
		Id = ${id}
	</h3>

	<h4>Friends List</h4>
	
	${friends}
	
	<h1>from foreach of java taglib</h1>
	<c:forEach var="fri" items="${friends }">
	
		<h2>${fri }</h2>
		
	</c:forEach>
	
	<c:out value="${name} "/>
	
</body>
</html>