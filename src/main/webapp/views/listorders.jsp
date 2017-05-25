<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<title>products</title>
</head>
<body>

<div style="display: inline-block; float: right;">
           <a class="navbar-brand" href="/secure">Home</a>
     <a style="color: red" class="navbar-brand" href="logout">Logout</a>
</div>

<h1>List of Orders</h1>
	<table class="table table-striped">
		<tr>
	<th>Order Date</th>
	<th>First Name</th>
	<th>Total order Amount</th>
	
	
	</tr>
	<c:forEach var="order" items="${orders}">

	<tr>
	
		<td>${order.orderDate}</td>
	
		<td>${order.person.firstName}</td>
	
		<td>${order.getTotalAmount()}</td>	
		</tr>
	</c:forEach>
	</table>
	</body>
	</html>