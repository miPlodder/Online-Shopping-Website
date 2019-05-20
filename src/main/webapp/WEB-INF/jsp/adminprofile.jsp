<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Profile</title>
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
</style>

<script type="text/javascript">
  
  window.onload = function() {
  document.getElementById('a-profile').style.background="#6395FF";
  }
  
</script>

</head>
<body bgcolor="#F0F8FF">
	<div class="header">
		<ul id="header-ul">
			<li><a href="home">Home</a></li>
			<li><a href="products">Products</a></li>
			<li><a href="orders">Orders</a></li>
			<li><a id="a-profile" href="/profile">Profile</a></li>
			<li><a href="logout">Logout</a></li>
		</ul>
	</div>

	<div class="body">
		<table align="center">
			<tr>
				<th>Username</th>
				<td>${admin.adminName}</td>
			</tr>
			<tr>
				<th>Age</th>
				<td>${admin.age}</td>
			</tr>
			<tr>
				<th>Gender</th>
				<td>${admin.gender}</td>
			</tr>
			<tr>
				<th>Address</th>
				<td>${admin.address}</td>
			</tr>
		</table>
	</div>

</body>
</html>