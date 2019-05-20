<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thrift Shop</title>
<style>

body {
  margin:0px;
}

#ul_top_hypers li{
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
  border:0.5px solid black;
   color: white; 
   font-size: 25px;
   padding: 20px;
   text-decoration: none
}

.typewriter {
  font-family: Courier, monospace;
  display: inline-block;
  text-align:center;
  padding: 50px;
}

.typewriter-text {
    display: inline-block;
    overflow: hidden;
    letter-spacing: 2px;
  animation: typing 5s steps(30, end), blink .75s step-end infinite;
    white-space: nowrap;
    font-size: 30px;
    font-weight: 700;
    border-right: 4px solid orange;
    box-sizing: border-box;
    text-align:center;
}

@keyframes typing {
    from { 
        width: 0% 
    }
    to { 
        width: 100% 
    }
}

@keyframes blink {
    from, to { 
        border-color: transparent 
    }
    50% { 
        border-color: white; 
    }
}

</style>

<script type="text/javascript">
  
  window.onload = function() {
  document.getElementById('a-home').style.background="#6395FF";
  }
  
</script>
</head>
<body bgcolor="#F0F8FF">

	<div class="header">
		<ul id="ul_top_hypers">
			<li><a id="a-home" href="/home">Home</a></li>
			<li><a href="/products">Products</a></li>
			<li><a href="/orders">Orders</a></li>
			<li><a href="/profile">Profile</a></li>
			<li><a href="/logout">Logout</a></li>
		</ul>
	</div>
	<div class="typewriter">
		<span class="typewriter-text">Welcome, ${username}</span>
	</div>
</body>
</html>