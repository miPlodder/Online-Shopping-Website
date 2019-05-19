<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders History</title>

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
</style>

<script type="text/javascript">
  
  window.onload = function() {
  document.getElementById('a-orders').style.background="#6395FF";
  }
  
</script>
</head>
<body>
	<div class="header">
		<ul id="header-ul">
			<li><a href="/home">Home</a></li>
			<li><a href="/products">Products</a></li>
			<li><a id="a-orders" href="/orders">Orders</a></li>
			<li><a href="/profile">Profile</a></li>
			<li><a href="/logout">Logout</a></li>
		</ul>
	</div>

	<div class="body">
		<table align="center">
			<tr>
				<th>Product Name</th>
				<th>Price ($)</th>
				<th>Shipping Address</th>
				<th>City</th>
				<th>Country</th>
				<th>Quantity</th>
				<th>Date</th>
			</tr>
			<c:forEach items="${orderProducts}" var="orderProduct">
				<tr>
					<th>${orderProduct.productName}</th>
					<td>${orderProduct.price}</td>
					<td>${orderProduct.shippingAddress}</td>
					<td>${orderProduct.city}</td>
					<td>${orderProduct.country}</td>
					<td>${orderProduct.quantity}</td>
					<td>${orderProduct.date}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>