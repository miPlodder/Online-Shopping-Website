<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Product</title>

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
  	document.getElementById('a-products').style.background="#6395FF";
  }

</script>
</head>
<body>

	<div class="header">
		<ul id="header-ul">
			<li><a href="home">Home</a></li>
			<li><a id="a-products" href="products">Products</a></li>
			<li><a href="orders">Orders</a></li>
			<li><a href="profile">Profile</a></li>
			<li><a href="logout">Logout</a></li>
		</ul>
	</div>

	<div class="body">
		<form action="" id="productform" method="post"
			enctype="multipart/form-data">
			<table>
				<tr>
					<th>Image</th>
					<td><input type="file" name="image" /></td>
				</tr>
				<tr>
					<th>Product Name</th>
					<td><input type="text" name="productName" /></td>
				</tr>
				<tr>
					<th>Price</th>
					<td><input type="text" name="price" /></td>
				</tr>
				<tr>
					<th>Rating</th>
					<td><input type="number" value="1" min="1" max="5"
						name="rating" /></td>
				</tr>
				<tr>
					<th>Description</th>
					<td><textarea form="productform" rows="8" cols="100"
							name="description"></textarea></td>
				</tr>
				<tr>
					<th>Seller</th>
					<td><input type="text" name="seller" /></td>
				</tr>

				<tr>
					<th></th>
					<td><input type="submit" /></td>
				</tr>
			</table>
		</form>

	</div>
</body>
</html>