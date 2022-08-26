<%@page language="java" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Form Design</title>
<link href="style_login.css" type="text/css" rel="stylesheet">

<script type="text/javascript">
function checkpass(){
var username = "Bigdog";
var password = "Opendoor1"; // user1***** 12345X
var x = document.getElementById("usrnme").value; 
var y = document.getElementById("pwd").value; 
 if(x==username & y== password){ 
window.location = "./WelcomePage.html"; 
}else if(x!=username | y!= password){
   
  window.location ="./index.jsp?message=wrong username or password";
  
 
}


}

function logout(){

}


</script>





<script>
 window.onload= function(){

 var url_string = (window.location.href).toLowerCase();
 var url = new URL(url_string); 
 var message = url.searchParams.get("message");

 console.log("--" + message);
 document.getElementById("error").innerHTML = message;

}
</script>
</head>

<body>
<div class="loginbox">
<img src="./WhiteCat.jpg" class="avatar">
<p id="error" style="color:red;"></p> 
<h1>Login Here</h1>

 
<p>UserName</p>
<input type="text"  id="usrnme" name="" placeholder="Enter Username">
<p>Password</p>
<input type="password" id="pwd" name="" placeholder="Enter Password">
<!-- <input type="submit" name="" value="Login"><br> -->
<input type="submit" name="" id="loginbt" value="Login" onClick="checkpass()" ><br>
<a href="#">Lost you password?</a><br>
<a href="#">Don't have an account?</a>
<a href="./WelcomePage.html">Welcome PageXX</a><br>

</div>
<body>
</html>