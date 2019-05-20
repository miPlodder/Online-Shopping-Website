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
input[type=text], input[type=password], input[type=number] {
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
<script type="text/javascript">
  
  window.onload = function() {
  document.getElementById('a-signup').style.background="#6395FF";
  }
  
</script>

</head>
<body bgcolor="#F0F8FF">

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
					<td><input type="text" name="username" placeholder="Your username..."/></td>
				</tr>
				<tr>
					<th>Password</th>
					<td><input type="password" name="password" placeholder="Your secret password..."/></td>
				</tr>
				<tr>
					<th>Age</th>
					<td><input type="number" name="age" value="18"/></td>
				</tr>
				<tr>
					<th>Address</th>
					<td><input type="text" name="address" placeholder="Your address..."/></td>
				</tr>
				<tr>
					<th>Gender</th>
					<td><input type="radio" name="gender" value="Male" checked />
						Male <input type="radio" name="gender" value="Female" /> Female <input
						type="radio" name="gender" value="Undefined" /> Non-Binary</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="SIGN UP" /></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>