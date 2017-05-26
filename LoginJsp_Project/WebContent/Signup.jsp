<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel = "stylesheet" type = "text/css" href = "css/signup.css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="js/signup.js"></script>
<body>
	<div class="div" align="center">
		<label><h3>
				<u>USER SIGNUP PAGE</u>
			</h3></label>
		<form action="LoginServlet" method="post" onsubmit="return ValidateEmail()" >
			<label><span class="glyphicon glyphicon-user"></span><input type="text" name="fname" id="fname"placeholder="Enter FirstName" 
				></label>
				<br><br>
			 <label><span class="glyphicon glyphicon-pencil"></span><input type="text" name="lname" id="lname"
				placeholder="Enter LastName"></label> 
				<br> <br> 
				<label><span class="glyphicon glyphicon-envelope"></span><input type="email" name="Email" id="eid" placeholder="Enter Email"
				 ></label> <br> <br>
			<label> <span class="glyphicon glyphicon-lock"></span><input type="password" name="Password" id="passid" placeholder="Enter Password" ></label>
			 <br> <br>
			<br> <input type="submit" class="btn btn-success" value="Signup"
				style="width: 315px; height: 45px">

		</form>
      <label><p>Already Registered?<a href="login">Login here</a></p></label>
	</div>

</body>
</html>