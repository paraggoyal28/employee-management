<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Add Employee</title>
</head>
<body>
	<h1 class="text-center">Add Employee</h1>
	<s:form class="form ml-5 mr-5 d-flex flex-column" action="saveEmployee" modelAttribute="employee">
		<input type="hidden" value="${employee.hobbies}" id="hiddenTxt" />
		<s:hidden path="id" />
		<div class="form-group row">
				<label for="name">Name</label>
				<s:input id="name" class="form-control" type="text"
					placeholder="Enter Employee Name" path="fullname"
					label="Employee Name" />
		</div>
		<div class="form-group row">
				<label for="email">Email</label>
				<s:input type="email" class="form-control" id="email"
					placeholder="Enter Employee Email" path="email" label="Email" />
		</div>
		<div class="form-group row">
			<label for="gender">Gender</label>
			<div class="gender form-check">
			<div class="form-check form-check-inline">
				<s:radiobutton class="form-check-input"  name="gender" id="gender1" value="Male" path="gender" />
				<label class="form-check-label" for="gender1">
					Male
				</label>
			</div>
			<div class="form-check form-check-inline">
				<s:radiobutton class="form-check-input"  name="gender" id="gender2" value="Female" path="gender" />
				<label class="form-check-label" for="gender2">
					Female
				</label>
			</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="hobby">Interests</label>
			<div class="hobby form-check" >
			<div class="form-check form-check-inline">
				<s:checkbox class="form-check-input" id="hobby1" path="hobbies" value="Coding" />
				<label class="form-check-label" for="hobby1">Coding</label>
			</div>
			<div class="form-check form-check-inline">
				<s:checkbox class="form-check-input" id="hobby2" path="hobbies" value="Watching Movies"/>
				<label class="form-check-label" for="hobby2">Watching Movies</label>
			</div>
			<div class="form-check form-check-inline">
				<s:checkbox class="form-check-input" id="hobby3" path="hobbies" value="Reading" />
				<label class="form-check-label" for="hobby3">Reading</label>
			</div>
			<div class="form-check form-check-inline">
				<s:checkbox class="form-check-input" id="hobby4" path="hobbies" value="Studying" />
				<label class="form-check-label" for="hobby4">Studying</label>
			</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="country">Country</label>
			<s:select path="country" id="country" class="form-control custom-select custom-select-lg">
				<s:option value="India">India</s:option>
				<s:option value="USA">USA</s:option>
				<s:option value="New York">New York</s:option>
				<s:option value="Dubai">Dubai</s:option>
			</s:select>
		</div>
		
		<div class="form-group row">
			<label for="address">Address</label>
			<s:textarea class="form-control" id="address" path="address" />
		</div>
	
		<div class="form-group row">
			<input class="form-control btn btn-primary" type="submit" value="Add Employee" />
		</div>
	</s:form>
	

</body>
</html>