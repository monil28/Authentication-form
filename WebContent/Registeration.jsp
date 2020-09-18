<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Page</title>
</head>
<body style="background-color:darkgray">
<center>
	<form name="myform" action="Register" method="post" onsubmit= "return sub()">
		<fieldset>
		<legend><b>Sign Up Page</b></legend><br>
		<b>USERNAME</b> : <input type="text" name="uname" placeholder="Enter your username" autofocus><br><br>
		<b>PASSWORD</b> : <input type="password" name="pass" placeholder="Enter your Password" ><br><br> <!--  onkeydown="sub(event)" -->
	   	<input type="submit" value="Submit"> <br><br>
	</fieldset></form>
	<script type="text/javascript">
	function sub(){
					<!-- if(event.keyCode == 13) -->
				var name = document.myform.uname.value;  
				var psw = document.myform.pass.value;
				if(name == "" || name==null){
					window.alert("Username can't be blank");
					return false;
				}
				if(psw == "" || psw==null){
					window.alert("Password can't be blank");
					return false;
				}
				else{
				window.alert(" You Have Registered Successfully ");
				document.getElementById("myform").submit();
				return true;
				}
			}
	</script>
		
</center>
</body>
</html>