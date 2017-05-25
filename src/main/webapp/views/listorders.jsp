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
	<table>
	<c:forEach var="order" items="${orders}">
	<tr>
	
		<td>${order.orderDate}</td>
	
		<td>${order.person.firstName}</td>
	
	
			<td><a href="/updatproduct/${product.id}"> delete </a></td>
		<!--  <td><a href="/updateproduct/${product.id}"> delete </a></td>-->
		</tr>
	</c:forEach>
	</table>
	</body>
	</html>