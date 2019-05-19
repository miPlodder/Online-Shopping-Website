<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Products</title>
<style>
body {
	margin: 0px;
}

#header-ul li {
	display: inline;
	color: red;
}

.header {
	background-color: #7E6FE8;
	text-align: right;
	margin: 0px;
	padding: 15px;
}

.a {
	border: 0.5px solid black;
	color: white;
	font-size: 25px;
	padding: 20px;
	text-decoration: none
}

.body {
	padding: 50px;
	font-size: 20px;
}
</style>

<script type="text/javascript">
  
  window.onload = function() {
  document.getElementById('a-products').style.background="#6395FF";
  }
  
  function redirect() {
  	 window.location.href = "http://localhost:8080/admin/product";
  }
  
</script>
</head>
<body>

	<div class="header">
		<ul id="header-ul">
			<li><a class="a" href="home">Home</a></li>
			<li><a class="a" id="a-products" href="products">Products</a></li>
			<li><a class="a" href="orders">Orders</a></li>
			<li><a class="a" href="profile">Profile</a></li>
			<li><a class="a" href="logout">Logout</a></li>
		</ul>
	</div>

	<div class="body">

		<button onclick="redirect()">Add Product</button>
		<table align="center">
			<tr>
				<th>Product Id</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Seller</th>
			</tr>
			<c:forEach items="${adminProducts}" var="adminProduct">
				<tr>
					<th><c:out value="${adminProduct.productId}" /></th>
					<td><c:out value="${adminProduct.productName}" /></td>
					<td><c:out value="${adminProduct.price}" /></td>
					<td><c:out value="${adminProduct.seller}" /></td>
					<td><a href="products/${adminProduct.productId}">Update</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>