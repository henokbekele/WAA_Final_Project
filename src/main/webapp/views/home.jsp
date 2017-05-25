<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body>


	<!--  
		<div class="container">
  <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
    <a class="navbar-brand" href="/secure">log in</a> 

  </nav>
  
</div>
-->	
<div style="display: inline-block; float: right;">
		 <a class="navbar-brand" href="/secure">log in</a> 
</div>
		<h1>WorBek Coffee shop</h1> 
		
		
		<h3>available products</h3>
	<table class="table table-striped">
		<tr>
			<th>Product Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Product Type</th>
			
		</tr>
	<c:forEach var="product" items="${products}">
	<tr>
		<td>${product.productName}</td>
		<td>${product.description}</td>
		<td>${product.price}</td>
		<td>${product.productType}</td>
		</tr>
	</c:forEach>
	</table>	
		
</body>
</html>