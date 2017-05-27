<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="js/login.js"></script>
 <link rel = "stylesheet"type = "text/css"href = "css/login.css" />
<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<body>
	<%
		if (session.getAttribute("fpassword") == null) {
	%>
	<div class="div" align="center" style="">
	<label><h3>Welcome To Login Page</h3></label>
	
		<form method="post">
		<label><span class="glyphicon glyphicon-envelope"></span><input type="email" name="Email" id="eid" placeholder="Enter Email"></label> 
		 <br> <br> 
		<label><span class="glyphicon glyphicon-lock"></span><input type="password" id="passid" name="Password" placeholder="Enter Password"></label>
		 <br> <br>
		<label><%if(session.getAttribute("msg")!=null) {%>
		<label><p><font color="red">Wrong Password/Email Try Again?</font></p></label>
			<%} %> 
		<br> 
		<input type="submit" class="btn btn-info" onclick=" return ValidateEmail()" formaction="LoginToFormjspServlet" value="Login" style="width: 300px; height: 45px">
		 <br>
		</form>
		<label><p> Not Registered?<a href="signup">Register here</a></p></label>
	</div>
	<%
		}
	%>
</body>
</html>