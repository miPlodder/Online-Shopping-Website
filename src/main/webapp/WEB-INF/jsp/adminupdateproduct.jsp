<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${adminProduct.productName}</title>
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
			<li><a class="a" href="/admin/home">Home</a></li>
			<li><a class="a" href="/admin/products">Products</a></li>
			<li><a class="a" href="/admin/orders">Orders</a></li>
			<li><a class="a" href="/admin/profile">Profile</a></li>
			<li><a class="a" href="/admin/logout">Logout</a></li>
		</ul>
	</div>

	<div class="body">

		<form id="updateform" method="post" action="/admin/products">

			<input type="hidden" name="productId"
				value="${adminProduct.productId}" />
			<table>
				<tr>
					<th>Product Name</th>
					<td><input type="text" name="productName"
						value="${adminProduct.productName}" /></td>
				</tr>
				<tr>
					<th>Price</th>
					<td><input type="text" name="price"
						value="${adminProduct.price}" /></td>
				</tr>
				<tr>
					<th>Rating</th>
					<td><input type="text" name="rating"
						value="${adminProduct.rating}" /></td>
				</tr>
				<tr>
					<th>Description</th>
					<td><textarea rows="10" cols="100" name="description"
							form="updateform">
						${adminProduct.description}
					</textarea></td>
				</tr>
				<tr>
					<th>Seller</th>
					<td><input type="text" name="seller"
						value="${adminProduct.seller}" /></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" value="Update" /></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>