<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${product.productName}</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
	box-sizing: border-box;
}

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

.body {
	padding: 50px;
}

a {
	border: 0.5px solid black;
	color: white;
	font-size: 25px;
	padding: 20px;
	text-decoration: none
}

.checked {
	color: orange;
}

.column {
	float: left;
	width: 50%;
	padding: 10px;
}

.row:after {
	content: "";
	display: table;
	clear: both;
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

/* CSS for Input types */
input[type=text], input[type=password], input[type=number] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

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

</head>
<body bgcolor="#F0F8FF">
	<div class="header">
		<ul id="header-ul">
			<li><a href="/home">Home</a></li>
			<li><a href="/products">Products</a></li>
			<li><a href="/orders">Orders</a></li>
			<li><a href="/profile">Profile</a></li>
			<li><a href="/logout">Logout</a></li>
		</ul>
	</div>

	<div class="body">
		<div class="row">
			<div class="column">
				<table>
					<tr>
						<th>Image</th>
						<td><img src="/images/products/${product.productId}.jpg"
							alt="Image Not Available" height="100px" width="100px" /></td>
					</tr>
					<tr>
						<th>Name</th>
						<td>${product.productName}</td>
					</tr>
					<tr>
						<th>Rating</th>
						<td>

							<div>
								<c:forEach var="i" begin="1" end="5">
									<c:choose>
										<c:when test="${product.rating >= i}">
											<span class="fa fa-star checked"></span>
										</c:when>
										<c:otherwise>
											<span class="fa fa-star"></span>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</div>
						</td>
					</tr>
					<tr>
						<th>Price</th>
						<td><b>$</b> ${product.price}</td>
					</tr>
					<tr>
						<th>Description</th>
						<td><p>${product.description}</p></td>
					</tr>
					<tr>
						<th>Seller</th>
						<td>${product.seller}</td>
					</tr>
				</table>
			</div>
			<div class="column">
				<form action="/payment" method="post">
					<table>
						<tr>
							<th>Delivery Address</th>
							<td><input type="text" name="shippingAddress"
								placeholder="Your Address..."></td>
						</tr>
						<tr>
							<th>City</th>
							<td><input type="text" name="city"
								placeholder="Your City..."></td>
						</tr>
						<tr>
							<th>Country</th>
							<td><input type="text" name="country"
								placeholder="Your Country..."></td>
						</tr>
						<tr>
							<th>Quantity</th>
							<td><input type="number" name="quantity" min=1 max=5 value=1></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								value="Continue to Pay" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>