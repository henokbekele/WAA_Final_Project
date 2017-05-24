<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>products</title>
</head>
<body>
	<h1>Add customer</h1>
	
	<form action="/addperson" method="post">
	<table>
		<tr>
			<td>firstName:</td>
			<td><input type="text" name="firstName"  /> </td></tr>
			<tr>
			<td>lastName:</td>
		<td><input type="text" name="lastName" /> </td></tr>
		<tr>
			<td>email:</td>
		<td><input type="text" name="email" /> </td></tr>
		<tr>
			<td>phone:</td>
		<td><input type="text" name="phone" /> </td></tr>
	
			<tr>
			<td>city:</td>
		<td><input type="text" name="city" /> </td></tr>
	
			<tr>
			<td>state:</td>
		<td><input type="text" name="state" /> </td></tr>
	
			<tr>
			<td>country:</td>
		<td><input type="text" name="country" /> </td></tr>
	

			<tr>
			<td>zipcode:</td>
		<td><input type="text" name="zipcode" /> </td></tr>
				
	</table>
	
	<input type="hidden" name= "${_csrf.parameterName}" value="${_csrf.token}"/>
	
	<input type="submit" value="add customer"/>
	</form>
	
	
	

		
	<table>
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