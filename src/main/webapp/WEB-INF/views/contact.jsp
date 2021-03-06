<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@page isELIgnored = "false" %>    

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>
<body>

	<div class="container mt-5">
		<form action="processData" method="post">
		
			<div class = "text-center">
				<h2>${Header}</h2> 
				<br>
				<p>${tagLine }</p>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Email
					address</label> <input type="email" name ="userEmail" class="form-control" id="emailID"
					placeholder="enter email id">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Name
				</label> <input type="text" name="userName" class="form-control"
					id="name" placeholder="enter name">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Password
				</label> <input type="password" name="userPassword" class="form-control"
					id="name" placeholder="password">
			</div>
			
			<div class = "container text-center btn"> 
				<button type="submit">GO</button>
			</div>
		</form>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>
