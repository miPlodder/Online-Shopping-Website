<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thrift Shop</title>
<style>
body {
	margin: 0px;
}

#ul_top_hypers li {
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
	text-align: center;
	padding: 50px;
}
</style>

<script type="text/javascript">
  
  window.onload = function() {
  document.getElementById('a-signin').style.background="#6395FF";
  }
  
</script>
</head>
<body>

	<div class="header">
		<ul id="ul_top_hypers">
			<li><a id="a-signin" href="/">Sign In</a></li>
			<li><a href="/signup">Sign Up</a></li>
		</ul>
	</div>
	<div class="body">
		<form action="/" method="post">
			<table align="center">
				<tr>
					<td>Username</td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Login"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>