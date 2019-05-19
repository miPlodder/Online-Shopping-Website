<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PaymentGateway</title>
<style>
#myProgress {
	width: 100%;
	background-color: #ddd;
}

#myBar {
	width: 1%;
	height: 30px;
	background-color: #4CAF50;
}

#toast {
    visibility: hidden;
    max-width: 50px;
    height: 50px;
    /*margin-left: -125px;*/
    margin: auto;
    background-color: #333;
    color: #fff;
    text-align: center;
    border-radius: 2px;

    position: fixed;
    z-index: 1;
    left: 0;right:0;
    bottom: 30px;
    font-size: 17px;
    white-space: nowrap;
}
#toast #img{
	width: 50px;
	height: 50px;
    
    float: left;
    
    padding-top: 16px;
    padding-bottom: 16px;
    
    box-sizing: border-box;

    
    background-color: #111;
    color: #fff;
}
#toast #desc{

    
    color: #fff;
   
    padding: 16px;
    
    overflow: hidden;
	white-space: nowrap;
}

#toast.show {
    visibility: visible;
    -webkit-animation: fadein 0.5s, expand 0.5s 0.5s,stay 3s 1s, shrink 0.5s 2s, fadeout 0.5s 2.5s;
    animation: fadein 0.5s, expand 0.5s 0.5s,stay 3s 1s, shrink 0.5s 4s, fadeout 0.5s 4.5s;
}

@-webkit-keyframes fadein {
    from {bottom: 0; opacity: 0;} 
    to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
    from {bottom: 0; opacity: 0;}
    to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes expand {
    from {min-width: 50px} 
    to {min-width: 350px}
}

@keyframes expand {
    from {min-width: 50px}
    to {min-width: 350px}
}
@-webkit-keyframes stay {
    from {min-width: 350px} 
    to {min-width: 350px}
}

@keyframes stay {
    from {min-width: 350px}
    to {min-width: 350px}
}
@-webkit-keyframes shrink {
    from {min-width: 350px;} 
    to {min-width: 50px;}
}

@keyframes shrink {
    from {min-width: 350px;} 
    to {min-width: 50px;}
}

@-webkit-keyframes fadeout {
    from {bottom: 30px; opacity: 1;} 
    to {bottom: 60px; opacity: 0;}
}

@keyframes fadeout {
    from {bottom: 30px; opacity: 1;}
    to {bottom: 60px; opacity: 0;}
}

body {
	text-align: center;
}
</style>
<script type="text/javascript">
	window.onload = function() {
		move();
		setTimeout(launch_toast, 5000);
	}
    function redirect() {
    	window.location.href = "http://localhost:8080/home";
    }
    
    function move() {
  		var elem = document.getElementById("myBar");   
  		var width = 1;
  		var id = setInterval(frame, 20);
  		function frame() {
    		if (width >= 100) {
      			clearInterval(id);
    		} else {
      			width++; 
      			elem.style.width = width + '%'; 
    		}
  		}
	}
	
	function launch_toast() {
 	   var x = document.getElementById("toast")
    	x.className = "show";
    	setTimeout(function(){ 
    		x.className = x.className.replace("show", ""); 
    		redirect();
    		}, 3000);
}
</script>
</head>
<body>
	<h3>Processing your Payment</h3>
	<div id="myProgress">
		<div id="myBar"></div>
	</div>
	<h6>Please don't Refresh or press Back button</h6>

	<div id="toast">
		<div id="img">Status</div>
		<div id="desc">Payment completed successfully !!!</div>
	</div>

</body>
</html>