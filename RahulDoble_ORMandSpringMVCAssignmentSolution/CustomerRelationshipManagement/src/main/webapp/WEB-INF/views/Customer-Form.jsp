<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>Customer Form</title>
<style>
body {
	background-color: #cdffcd;
}

.container {
	max-width: 50%;
	margin-top: 10px;
	border-radius: 10px;
	border-style: groove;
	padding: 20px;
}

label {
	padding: 0 20px;
	display: inline-block;
	width: 200px;
	text-align: right;
	display: inline-block;
}

h1 {
	text-align: center;
	background-color: #65a765;
	padding: 10px 10px 10px;
	margin: 20px 200px 20px;
}

input[type=text] {
	width: 50%;
	padding: 8px 12px;
	margin: 8px;
	box-sizing: border-box;
}

button {
	margin-left: 200px;
}

input[type=reset] {
	margin-left: 75px;
}
</style>
</head>
<body>

	<h1>CUSTOMER RELATIONSHIP MANAGEMENT</h1>
	<div class="container">
		<h3>save customer</h3>
		<hr>

		<!-- form for new entry or update -->

		<form action="/CustomerRelationshipManagement/customerService/save"
			method="post">

			<input type="hidden" id="id" name="id" value="${Customer.id}" /> <label
				for="firstName">First Name:</label> <input type="text"
				id="firstName" name="firstName" value="${Customer.firstName}"
				placeholder="Enter First Name" /><br> <br> <label
				for="lastName">Last Name:</label> <input type="text" id="lastName"
				name="lastName" value="${Customer.lastName}"
				placeholder="Enter Last Name" /><br> <br> <label
				for="email">Email:</label> <input type="text" id="email"
				name="email" value="${Customer.email}" placeholder="Enter Email" /><br>
			<br> <br> <br>
			<button type="submit" class="btn btn-info col-2">Save</button>
			<input type="reset" class="btn btn-info col-2" value="reset entry" />

		</form>
		<a href="/CustomerRelationshipManagement/customerService/list">Back
			to Books List</a>

	</div>
</body>
</html>