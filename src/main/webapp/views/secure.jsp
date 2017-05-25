<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>You are in!</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body><h1>coffee shop!</h1>
<!--  <a href="<c:url value="/logout" />"> Now logout </a>-->

<div class="container">
  <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
    <a class="navbar-brand" href="/addperson">Add person</a>
    <a class="navbar-brand" href="/manageproduct">Manage Product</a>
       <a class="navbar-brand" href="/addcustomer">Add Order</a>
        <a class="navbar-brand" href="/listorder">List of Order</a>
    
     <a style="color: red" class="navbar-brand" href="logout">logout</a>
   

  </nav>
</div>

</body>
</html>