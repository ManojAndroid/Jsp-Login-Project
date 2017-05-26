<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
</style>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<body>
	<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
	<div class="container-fluid">
		<div class="navbar-header">
		<%if(session.getAttribute("fpassword")!=null) {%>
			<a class="navbar-brand" href="#"> <span class="glyphicon glyphicon-home"></span>Home</a>
			<%} %>
		</div>
		<ul class="nav navbar-nav">
			<%if(session.getAttribute("fpassword")!=null) {%>
			<li><a href="ViewData"><span class="glyphicon glyphicon-edit"></span>UpdateEmployees Details</a></li>
			<%} %>

			<%if(session.getAttribute("fpassword")!=null) {%>
			<li><a href="form"> <span class="glyphicon glyphicon-refresh"></span>Register New Employee </a></li>
			<%} %>
			<%if(session.getAttribute("fpassword")!=null) {%>
			<li><a href="DisplayDetails"><span class="glyphicon glyphicon-blackboard"></span> Display Employees Details</a></li>
			<%} %>

		</ul>

		<ul class="nav navbar-nav navbar-right">
			<%-- <%if(session.getAttribute("fpassword")==null){ %>
			<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
					Sign Up</a></li>

			<%} %> --%>
			<%-- <%if(session.getAttribute("fpassword")==null){ %>


			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					Login</a></li>
			<%} %> --%>
			<%if(session.getAttribute("fpassword")!=null){%>


			<li><a href="LogoutServlet"><span
					class="glyphicon glyphicon-log-in"></span> Logout</a></li>
			<% }%>
		</ul>
	</div>
	</nav>
</body>
</html>