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
</head>
<body>
	<h3>Do you want to delete this product ?</h3>
	
	<form action="/deleteproduct" method="post">
	<table class="table table-striped" >
	
			<td><input type="hidden" name="id" value="${product.id}"  /> </td></tr>
	
		<tr>
			<td>Product Name: <input readonly="readonly" type="text" name="productName" value="${product.productName}"  /> </td></tr>
			<tr>
			<td>Description: <input readonly="readonly" type="text" name="description" value="${product.description}" /> </td></tr>
		<tr>
			<td>Price: <input readonly="readonly" type="text" name="price" value="${product.price}" /> </td></tr>
		<tr>
			<td>Product Type: <input readonly="readonly" type="text" name="productType" value="${product.productType}" /> </td></tr>
	
				
	</table>

	
	<input type="hidden" name= "${_csrf.parameterName}" value="${_csrf.token}"/>
	
	<input class="btn btn-danger" type="submit" value="delete product"/>
	</form>
	<div></div>
	<div></div>
	<form action="/manageproduct" method="get">
		<input type="hidden" name= "${_csrf.parameterName}" value="${_csrf.token}"/>
	
	<input class="btn btn-success"  type="submit" value="cancle"/>
	
	</form>
	</body>
	</html>