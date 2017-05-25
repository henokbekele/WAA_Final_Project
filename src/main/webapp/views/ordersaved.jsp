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
<body>

<div style="display: inline-block; float: right;">
           <a class="navbar-brand" href="/addcustomer">order for other person</a>
           <a class="navbar-brand" href="/secure">Home</a>
     <a style="color: red" class="navbar-brand" href="logout">Logout</a>
</div>

<h4>
Order of ${order.person.firstName} with total cost of ${total} is saved successfully
</h4>

	<h1>ordered Saved</h1>

	


	
</body>
</html>
