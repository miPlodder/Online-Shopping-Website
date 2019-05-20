<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

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

/* CSS for tables*/
table {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

table td, table th {
	border: 1px solid #ddd;
	padding: 8px;
	width: 20%;
}

table tr:nth-child(even) {
	background-color: #f2f2f2;
}

table tr:hover {
	background-color: #ddd;
}

table th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #8CBFFF;
	color: white;
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
<body bgcolor="#F0F8FF">

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

		<table align="center">
			<tr>
				<th>Product Id</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Seller</th>
				<th>Update</th>
			</tr>
			<c:forEach items="${adminProducts}" var="adminProduct">
				<tr>
					<td><c:out value="${adminProduct.productId}" /></td>
					<td><c:out value="${adminProduct.productName}" /></td>
					<td><c:out value="${adminProduct.price}" /></td>
					<td><c:out value="${adminProduct.seller}" /></td>
					<td align="center"><a href="products/${adminProduct.productId}"><img src="/images/baseline_edit_black_18dp.png"></a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5" align="center"><button onclick="redirect()"
						class="w3-button w3-xlarge w3-circle w3-blue">+</button></td>
			</tr>
		</table>
	</div>
</body>
</html>