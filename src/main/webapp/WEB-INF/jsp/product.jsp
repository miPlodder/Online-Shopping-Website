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
</style>

</head>
<body>
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
				<img src="/images/products/${product.productId}.jpg"
					alt="Image Not Available" height="200px" width="200px" /> <br>
				<br>
				<table>
					<tr>
						<th>Name:</th>
						<td>${product.productName}</td>
					</tr>
					<tr>
						<th>Rating:</th>
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
						<th>Price:</th>
						<td><b>$</b> ${product.price}</td>
					</tr>
					<tr>
						<th>Description:</th>
						<td><p>${product.description}</p></td>
					</tr>
					<tr>
						<th>Seller:</th>
						<td>${product.seller}</td>
					</tr>
				</table>
			</div>
			<div class="column" style="padding: 100px">
				<form action="/payment" method="post">
					</td>
					<table>
						<tr>
							<th>Delivery Address:</th>
							<td><input type="text" name="shippingAddress"></td>
						</tr>
						<tr>
							<th>City:</th>
							<td><input type="text" name="city"></td>
						</tr>
						<tr>
							<th>Country:</th>
							<td><input type="text" name="country"></td>
						</tr>
						<tr>
							<th>Quantity:</th>
							<td><input type="number" name="quantity" min=1 max=5 value=1></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="Continue to Pay" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>