<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
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
		<form action="/paymentgateway" method="post">
			<table align="center">
				<tr>
					<th>Name on Card:</th>
					<td><input type="text" name="cardName"></td>
				</tr>
				<tr>
					<th>Credit Card Number:</th>
					<td><input type="text" name="cardNumber" /></td>
				</tr>
				<tr>
					<th>CVV:</th>
					<td><input type="text" name="cvv" /></td>
				</tr>
				<tr>
					<th>Expiry Year:</th>
					<td><input type="text" name="expiryYear" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Pay"></td>
				</tr>
			</table>

		</form>
	</div>



</body>
</html>