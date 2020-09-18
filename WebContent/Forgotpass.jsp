<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body style="background-color:darkgray">
<center>
<form name="myform2" action="ForgotPass" method="post" onsubmit= "return sub()">
<fieldset>
		<legend><b>Recover your Password</b></legend><br>
			<input type="text" name="name" placeholder="enter your username" required="required"><br><br>
			<input type="password" name="psw" placeholder="enter new password" required="required"><br><br>
			<input type="password" name="psw1" placeholder="confirm new password" required="required"><br><br>
			<input type="submit" value="Update"><br><br>
			</fieldset></form>
	
	<script type="text/javascript">
	function sub() {
		var uname = document.myform2.name.value;  
		var pass = document.myform2.psw.value;
		var pass1 = document.myform2.psw1.value;
		if(uname == "" || uname==null){
			window.alert("Username can't be blank");
			return false;
		}
		if(pass == "" || pass==null){
			window.alert("Password can't be blank");
			return false;
		}
		if(pass1 == "" || pass1==null){
			window.alert("Password can't be blank");
			return false;
		}
		if(pass != pass1){
			window.alert("Password is not matching");
			pass = "";
			pass1 = "";
			return false;
		}
		else{
		  window.alert("Password Updated Successfully");
		  document.getElementById("myform2").submit();
		  return true;
		}
	}
	</script>
</center>
</body>
</html>