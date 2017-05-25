<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>products</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

</head>
<body>
	<h1>Add customer</h1>
	
	<form action="/addperson" method="post">
	<table class="table table-striped">
		<tr>
		
			<td>FirstName:</td><td><input type="text" name="firstName"  /> </td>

			<td>LastName:</td><td><input type="text" name="lastName" /> </td>
		
			<td>Email:</td><td> <input type="text" name="email" /> </td></tr>

		<tr>	<td>Phone:</td><td> <input type="text" name="phone" /> </td> 
		
			<td>City:</td><td><input type="text" name="city" /> </td>

			<td>State:</td><td> <input type="text" name="state" /> </td></tr>
	
			<tr>
			<td>Country:</td><td> <input type="text" name="country" /> </td> 
			<td>Zipcode:</td><td> <input type="text" name="zipcode" /> </td></tr>
				
	</table>
	
	<input type="hidden" name= "${_csrf.parameterName}" value="${_csrf.token}"/>
		<dir></dir>
	<dir></dir>
	<input type="submit" value="add customer"/>
	</form>
	
	
	<dir></dir>
	<dir></dir>

	<div class="progress">
		<div class="progress-bar" role="progressbar" aria-valuenow="60"
			aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
			list of person</div>
	</div>
	

		
	<table class="table table-striped">
	<tr>
	<th>FirstName</th>
<th>lastName</th>
<th>Email</th>
<th>City</th>
<th>Country</th>
<th>phone</th>
<th>edit</th>
	</tr>
	<c:forEach var="person" items="${persons}">
	<tr>
	
		<td>${person.firstName}</td>
	
		<td>${person.lastName}</td>
		<td>${person.email}</td>
	   <td>${person.address.city}</td>
	
		<td>${person.address.country}</td>
		<td>${person.phone}</td>
		<td><a href="/updateperson/${person.id}"> edit </a></td>
		</tr>
	</c:forEach>
	</table>
	
	
	</body>
	</html>