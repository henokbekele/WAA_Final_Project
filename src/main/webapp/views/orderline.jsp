<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>products</title>
</head>
<body>
	<h1>all orderline</h1>
	
	<form action="/orderline" method="post">
	<table>


		
			<tr>
			<td>id:</td>
			<td><input type="text" name="id"  /> </td></tr>
			<tr>

	<tr>
			<td>quantity:</td>
			<td><input type="text" name="quantity"  /> </td></tr>
			<tr>

			<td>product:</td>
		<td><input type="text" name="product" /> </td></tr>
		<tr>
			<td>order:</td>
		<td><input type="text" name="order" /> </td></tr>
		<tr>
		<tr><td>
		<td>select product:</td>
			<select name="productoption" >
    <c:forEach var="item" items="${products}">
        <option value="${item.id}" >${item.productName}</option>
    </c:forEach>
</select>	
		</td>
		</tr>
		
		
		
		
	</table>
	
	<input type="hidden" name= "${_csrf.parameterName}" value="${_csrf.token}"/>







	<input type="submit" value="add order"/>
	</form>
	


	
	
	<h3>list of order</h3>
	
		customer name : ${customer.firstName}</td>
	<table>
	<c:forEach var="orderline" items="${orderlines}">
	<tr>
	
		<td>${orderline.quantity}</td>
	
		<td>${orderline.product.productName}</td>
		<td>${orderline.order.id}</td>
		</tr>
	</c:forEach>
	</table>
	
	<form action="/addorder" method="post">
		<input type="hidden" name= "${_csrf.parameterName}" value="${_csrf.token}"/>
	
	<input type="submit" value="order"/>
	</form>
	
	
	
</body>
</html>