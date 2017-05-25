<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<h1>orderline</h1>

	<form action="/orderline" method="post">
		<table class="table table-striped" >

			<td>quantity:</td>
			<td><input type="text" name="quantity" /></td>
			</tr>
			<tr>
			<tr>
				<td>Product :</td>
				<td><select name="productoption">
						<c:forEach var="item" items="${products}">
							<option value="${item.id}">${item.productName}</option>
						</c:forEach>
				</select></td>
			</tr>




		</table>

		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="add order" />
	</form>


	<dir></dir>
	<dir></dir>

	<div class="progress">
		<div class="progress-bar" role="progressbar" aria-valuenow="60"
			aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
			list of order</div>
	</div>


	customer name : ${customer.firstName}
	 
	<table class="table table-striped">
	<tr>
	<th>Quantity</th>
	<th>Product Name</th>
	<th>Price per unit</th>
	
	</tr>
		<c:forEach var="orderline" items="${orderlines}">
			<tr>

				<td>${orderline.quantity}</td>

				<td>${orderline.product.productName}</td>
				<td>${ orderline.price}</td>
			</tr>
		</c:forEach>
	</table>

	<form action="/addorder" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="order" />
	</form>



</body>
</html>