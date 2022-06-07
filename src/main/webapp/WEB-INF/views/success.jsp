<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored = "false" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>
		<div class = "text-center">
				<h2>${Header}</h2> 
				<br>
				<p>${tagLine }</p>
			</div>
	Hello Mr. ${user.userName }
	<br>
	Email ID = ${user.userEmail }
	<br>
	password = ${user.userPassword }
	

</h1>

</body>
</html>