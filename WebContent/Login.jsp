<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In Page</title>
</head>
<body style="background-color:darkgray">
<center>
	<form name="myform1" action="Login" method="post" onsubmit= "return sub()">
	<fieldset>
	<legend><b>Login Page</b></legend><br>
		<b>USERNAME</b> : <input type="text" name="uname" placeholder="Enter your username" required="required" autofocus><br><br>
		<b>PASSWORD</b> :<input type="password" name="pass" placeholder="Enter your Password" required="required"><br><br>
	  	<input type="submit" value="LOGIN"> <br><br>
		<button onclick="document.location ='Forgotpass.jsp'"><b>Forgot Password</b></button><br><br>
	</fieldset></form>
	<script type="text/javascript">
	function sub() {
		var name = document.myform1.uname.value;  
		var psw = document.myform1.pass.value;
		if(name == "" || name==null){
			window.alert("Username can't be blank");
			return false;
		}
		if(psw == "" || psw==null){
			window.alert("Password can't be blank");
			return false;
		}
		if(name != name || psw != psw){
			window.alert("wrong Information");
			return false;
		}
		else{
		  window.alert("You Have Logged In Successfully");
		  document.getElementById("myform1").submit();
		  return true;
		}
	}
	</script>
</center>
</body>
</html>