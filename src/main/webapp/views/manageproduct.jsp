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
	
	<form action="/manageproduct" method="post">
	<table>
	
	
	
		<tr>
			<td>productName:</td>
			<td><input type="text" name="productName"  /> </td></tr>
			<tr>
			<td>description:</td>
		<td><input type="text" name="description" /> </td></tr>
		<tr>
			<td>price:</td>
		<td><input type="text" name="price" /> </td></tr>
		<tr>
			<td>productType:</td>
		<td><input type="text" name="productType" /> </td></tr>
	
					
	</table>
	
	<input type="hidden" name= "${_csrf.parameterName}" value="${_csrf.token}"/>
	
	<input type="submit" value="add customer"/>
	</form>
	
	
	

		
	<table>
	<c:forEach var="product" items="${allproducts}">
	<tr>
	
		<td>${product.productName}</td>
	
		<td>${product.description}</td>
		<td>${product.price}</td>
	   <td>${product.productType}</td>
			<td><a href="/updatproduct/${product.id}"> delete </a></td>
		<!--  <td><a href="/updateproduct/${product.id}"> delete </a></td>-->
		</tr>
	</c:forEach>
	</table>
	
	
	</body>
	</html>