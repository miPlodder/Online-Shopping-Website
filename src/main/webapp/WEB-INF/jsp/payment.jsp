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
input[type=text], input[type=password] {
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
			<li><a id="a-orders" href="/orders">Orders</a></li>
			<li><a href="/profile">Profile</a></li>
			<li><a href="/logout">Logout</a></li>
		</ul>
	</div>

	<div class="body">
		<form action="/paymentgateway" method="post">
			<table align="center">
				<tr>
					<th>Name on Card</th>
					<td><input type="text" name="cardName"
						placeholder="Your Card Name..."></td>
				</tr>
				<tr>
					<th>Credit Card Number</th>
					<td><input type="text" name="cardNumber"
						placeholder="Your Credit Card Number..." /></td>
				</tr>
				<tr>
					<th>CVV</th>
					<td><input type="text" name="cvv" placeholder="Card Verification Value..." /></td>
				</tr>
				<tr>
					<th>Expiry Year</th>
					<td><input type="text" name="expiryYear"
						placeholder="Credit Card Expiry Year..." /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="PAY"></td>
				</tr>
			</table>

		</form>
	</div>



</body>
</html>