<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<h1>Manage Products</h1>

	<form action="/manageproduct" method="post">
		<table class="table table-striped">



			<tr>
				<td>productName:</td>
				<td><input type="text" name="productName" /></td>
			</tr>
			<tr>
				<td>description:</td>
				<td><textarea rows="4" cols="50" name="description"></textarea>
				</td>
			</tr>
			<tr>
				<td>price:</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<!-- <tr>
			<td>productType:</td>
		<td><input type="text" name="productType" /> </td></tr>
	 -->
			<tr>
				<td>productType:</td>
				<td><select type="text" name="productType">
						<option value="BREAKFAST">BREAKFAST</option>
						<option value="LUNCH">LUNCH</option>
						<option value="DINNER">DINNER</option>
				</select></td>
			</tr>

		</table>

		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="add product" />
	</form>


<dir></dir>
	<dir></dir>

	<div class="progress">
		<div class="progress-bar" role="progressbar" aria-valuenow="60"
			aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
			list of Product</div>
	</div>


	<table class="table table-striped">

		<tr>
			<th>Product Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Product Type</th>
			<th>manage product</th>
		</tr>
		<tr>

			<c:forEach var="product" items="${allproducts}">


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