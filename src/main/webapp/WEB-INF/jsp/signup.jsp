<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
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
	padding: 50px;
	align-content: center;
}
</style>
<script type="text/javascript">
  
  window.onload = function() {
  document.getElementById('a-signup').style.background="#6395FF";
  }
  
</script>

</head>
<body>

	<div class="header">
		<ul id="ul_top_hypers">
			<li><a href="/">Sign In</a></li>
			<li><a id="a-signup" href="/signup">Sign Up</a></li>
		</ul>
	</div>
	<div class="body">
		<form action="/signup" method="post">
			<table align="center">
				<tr>
					<th>Username</th>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<th>Password</th>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<th>Age</th>
					<td><input type="number" name="age" value="18" /></td>
				</tr>
				<tr>
					<th>Address</th>
					<td><input type="text" name="address" /></td>
				</tr>
				<tr>
					<th>Gender</th>
					<td><input type="radio" name="gender" value="Male" checked/> Male <input
						type="radio" name="gender" value="Female" /> Female <input
						type="radio" name="gender" value="Undefined" /> Non-Binary</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Sign Up" /></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>