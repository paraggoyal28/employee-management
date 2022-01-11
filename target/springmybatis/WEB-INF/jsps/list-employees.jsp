<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employees</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	<h1 class="text text-center">List Employees</h1>
	<div class="mt-2">
		<table class="table table-bordered">
			<thead class="thead-dark">
				<tr>
				<th scope="col">Full Name</th>
				<th scope="col">Email</th>
				<th scope="col">Gender</th>
				<th scope="col">Hobbies</th>
				<th scope="col">Country</th>
				<th scope="col">Address</th>
				<th colspan="2" class="text-center">Actions</th>
				
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${listemployees}" var="e">
				<c:url var="deleteLink" value="/deleteEmployee">
					<c:param name="employeeId" value="${e.id}" />
				</c:url>
				<c:url var="updateLink" value="/editEmployee">
					<c:param name="employeeId" value="${e.id}" />
				</c:url>
				<tr>
					<td>${e.fullname}</td>
					<td>${e.email}</td>
					<td>${e.gender}</td>
					<td>${e.hobbies}</td>
					<td>${e.country}</td>
					<td>${e.address}</td>
					<td class="bg bg-warning text text-light"><a href="${updateLink}" class="text text-light">UPDATE</a></td>
					<td class="bg bg-danger text text-light"><a href="${deleteLink}" class="text text-light" onclick="if(!(confirm('Are you sure you want to delete the record'))) return false;">DELETE</a></td>
					
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<button onclick="window.location.href='showFormForAddEmployee'" class="btn btn-primary">Add Employee</button>
	
</body>
</html>