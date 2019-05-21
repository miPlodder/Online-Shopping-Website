<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
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

/* CSS for INPUT types */
input[type=submit] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}
</style>

<script type="text/javascript">
  
  window.onload = function() {
  document.getElementById('a-products').style.background="#6395FF";
  }
  
</script>

</head>
<body bgcolor="#F0F8FF">

	<div class="header">
		<ul id="header-ul">
			<li><a href="/home">Home</a></li>
			<li><a id="a-products" href="/products">Products</a></li>
			<li><a href="/orders">Orders</a></li>
			<li><a href="/profile">Profile</a></li>
			<li><a href="/logout">Logout</a></li>
		</ul>
	</div>

	<div class="body">
		<c:forEach items="${products}" var="product">
			<form action="products/${product.productId}" method="post">
				<table align="center">
					<tr>
						<td><img src="/images/products/${product.productId}.jpg"
							alt="Image Not avaiable" width="100px" height="100px" /></td>
						<th><c:out value="${product.productName}" /></th>
						<td><c:out value="$ ${product.price}" /></td>
						<td><input type="submit" value="Buy now" /></td>
					</tr>
				</table>
			</form>
		</c:forEach>
	</div>

</body>
</html>