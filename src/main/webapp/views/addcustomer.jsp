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
	
	<form action="/addcustomer" method="post">
	<table class="table table-striped">
		<tr>
			<td>FirstName:</td>
			<td><input type="text" name="firstName"  /> </td></tr>
			<tr>
			<td>LastName:</td>
		<td><input type="text" name="lastName" /> </td></tr>
		<tr>
			<td>Email:</td>
		<td><input type="text" name="email" /> </td></tr>
		<tr>
			<td>Phone:</td>
		<td><input type="text" name="phone" /> </td></tr>
	
			<tr>
			<td>City:</td>
		<td><input type="text" name="city" /> </td></tr>
	
			<tr>
			<td>State:</td>
		<td><input type="text" name="state" /> </td></tr>
	
			<tr>
			<td>Country:</td>
		<td><input type="text" name="country" /> </td></tr>
	

			<tr>
			<td>Zipcode:</td>
		<td><input type="text" name="zipcode" /> </td></tr>
				
	</table>
	
	<input type="hidden" name= "${_csrf.parameterName}" value="${_csrf.token}"/>
	
	<input type="submit" value="Next order"/>
	</form>
	</body>
	</html>