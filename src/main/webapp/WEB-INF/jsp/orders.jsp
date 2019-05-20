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

/* CSS for tables*/
table {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

table td, table th {
	border: 1px solid #ddd;
	padding: 8px;
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

			<c:choose>
				<c:when test="${orderProducts.size() == 0}">
					<tr>
						<td colspan="7" align="center">No order history found....</td>
					</tr>
				</c:when>

				<c:otherwise>
					<c:forEach items="${orderProducts}" var="orderProduct">
						<tr>
							<td>${orderProduct.productName}</td>
							<td>${orderProduct.price}</td>
							<td>${orderProduct.shippingAddress}</td>
							<td>${orderProduct.city}</td>
							<td>${orderProduct.country}</td>
							<td>${orderProduct.quantity}</td>
							<td>${orderProduct.date}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	</div>
</body>
</html>