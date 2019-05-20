<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Orders</title>
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

a {
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
  document.getElementById('a-orders').style.background="#6395FF";
  }
  
</script>

</head>
<body bgcolor="#F0F8FF">
	<div class="header">
		<ul id="header-ul">
			<li><a href="home">Home</a></li>
			<li><a href="products">Products</a></li>
			<li><a id="a-orders" href="/orders">Orders</a></li>
			<li><a href="profile">Profile</a></li>
			<li><a href="logout">Logout</a></li>
		</ul>
	</div>

	<div class="body">
		<table align="center">
			<tr>
				<th>Order Id</th>
				<th>Product Id</th>
				<th>Price ($)</th>
				<th><h5>Shipping Address</h5></th>
				<th>City</th>
				<th>Country</th>
				<th>Quantity</th>
				<th>Date</th>
			</tr>
			<c:forEach items="${adminOrderProducts}" var="adminOrderProduct">
				<tr>
					<th>${adminOrderProduct.orderId}</th>
					<td>${adminOrderProduct.userId}</td>
					<td>${adminOrderProduct.productId}</td>
					<td>${adminOrderProduct.shippingAddress}</td>
					<td>${adminOrderProduct.city}</td>
					<td>${adminOrderProduct.country}</td>
					<td>${adminOrderProduct.quantity}</td>
					<td><h5>${adminOrderProduct.date}</h5></td>
				</tr>
			</c:forEach>
		</table>
	</div>


</body>
</html>