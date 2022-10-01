<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>CustomerList</title>

<style>
body {
	background-color: #cdffcd;
}

.container {
	text-align: center;
	padding-top: 20px;
}

.addButton {
	text-align: left;
}

.container h1 {
	background-color: #65a765;
	padding: 10px 10px 10px;
	margin: 0 0 20px;
}
</style>

</head>
<body>
	<div class="container">

		<h1>CUSTOMER RELATIONSHIP MANAGEMENT</h1>

		<!-- Add option button -->
		<div class="addButton">
			<a
				href="/CustomerRelationshipManagement/customerService/showFormForAdd"
				class="btn btn-primary btn-sm mb-3">Add Customer</a>
		</div>
		<!-- details list table -->
		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Customer}" var="tempCustomer">
					<tr>
						
						<td><c:out value="${tempCustomer.firstName}" /></td>
						<td><c:out value="${tempCustomer.lastName}" /></td>
						<td><c:out value="${tempCustomer.email}" /></td>

						<!-- for update and delete button -->

						<td><a
							href="/CustomerRelationshipManagement/customerService/showFormForUpdate?customerId=${tempCustomer.id}"
							class="btn btn-info btn-sm">Update</a> <a
							href="/CustomerRelationshipManagement/customerService/delete?customerId=${tempCustomer.id}"
							class="btn btn-danger btn-sm"
							onclick="if(!(confirm('Are you want to delete this entry?'))) return false">Delete</a>

						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>