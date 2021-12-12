<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<head>
<meta charset="ISO-8859-1">
<title>Customer Relationship Management</title>
</head>
<link href='https://fonts.googleapis.com/css?family=Paprika' rel='stylesheet'>
<style>
h1{
font-family: Paprika, serif;
background-color: #ffffcc;
text-align: center;
font-size: 6vw;
}
body {
  background-color: #ffffe6;
font-family: Verdana,Arial sans-serif;
  font-size: 2vw;
}
</style>
<body>
	<div class='container'>
		<h1 >Customer Relationship Management</h1>

		<a href="add" class="btn btn-primary btn mb-3"> Add Customer &nbsp <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
  			
		</a>

		<table class="table table-bordered table-striped">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Action</th>

			</tr>
			<c:forEach items="${customer }" var="customer">
				<tr>
					<td>${customer.firstName }</td>
					<td>${customer.lastName }</td>
					<td>${customer.email }</td>
					<td>
						<!-- Add "update" button/link --> 
						<a href="update?customerId=${customer.customerId}"
						class="btn btn-warning btn-sm"> Update &nbsp <svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
  						
						</a> 
						<!-- Add "delete" button/link --> 
						<a href="delete?customerId=${customer.customerId}"
						class="btn btn-danger btn-sm"
						onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">
							Delete &nbsp <svg xmlns="http://www.w3.org/2000/svg" width="16"
								height="16" fill="currentColor" class="bi bi-trash"
								viewBox="0 0 16 16">
  							
						</a>
					</td>
				</tr>

			</c:forEach>
		</table>
	</div>
</body>
</html>