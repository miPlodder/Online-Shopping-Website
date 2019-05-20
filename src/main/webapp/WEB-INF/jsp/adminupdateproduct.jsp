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
input[type=text], input[type=file], input[type=number] {
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
					<td><textarea rows="10" cols="125" name="description"
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