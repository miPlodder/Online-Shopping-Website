<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
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
  document.getElementById('a-profile').style.background="#6395FF";
  }
  
</script>

</head>
<body>

	<div class="header">
		<ul id="header-ul">
			<li><a href="/home">Home</a></li>
			<li><a href="/products">Products</a></li>
			<li><a href="/orders">Orders</a></li>
			<li><a id="a-profile" href="/profile">Profile</a></li>
			<li><a href="/logout">Logout</a></li>
		</ul>
	</div>

	<div class="body">
		<table align="center">
			<tr>
				<th>Username:</th>
				<td>${user.username}</td>
			</tr>
			<tr>
				<th>Age:</th>
				<td>${user.age}</td>
			</tr>
			<tr>
				<th>Gender</th>
				<td>${user.gender}</td>
			</tr>
			<tr>
				<th>Address</th>
				<td>${user.address}</td>
			</tr>
		</table>
	</div>

</body>
</html>