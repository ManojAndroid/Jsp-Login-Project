<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="js/loginform.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
form {
	border: 1px solid #e3f2fd;;
	margin-bottom: 20px;
}
</style>
<body bgcolor="#e3f2fd">
 <%
		if (session.getAttribute("fpassword") != null) {
	%>
	<jsp:include page="Header.jsp" />
	<center>
		<form action="RegistrationLoginUserServlet" method="post" name="reg"
			style="background-color: #e3f2fd; width: 41%; border: 1px solidblack;">


			<table align="center">
				<tr>
					<h3>Register New Employee Details</h3>
				</tr>
				<tr>
					<th>Enter Id <font color="red"><span>*</span></font></th>
					<td><input type="text" id="id" name="id"
						placeholder="Enter id" style="width: 100%; height: 37px"><br>
					<br></td>
				</tr>

				<tr>
					<th>Enter FirstName <font color="red"><span>*</span></th>
					<td><input type="text" name="fname" id="fnname"
						placeholder="Enter FirstName" style="width: 100%; height: 37px"><br>
						<br></td>
				</tr>

				<tr>
					<th>Enter LastName <font color="red"><span>*</span></th>
					<td><input type="text" id="lname" name="sname"
						placeholder="Enter  LastName" style="width: 100%; height: 37px"><br>
						<br></td>
				</tr>


				<tr>
					<th>Select Age <font color="red"><span>*</span></th>
					<td><select name="age" id="fage" style="width: 30%;">
							<option value="0">Select</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
					</select> Select Lang <font color="red"><span>*</span></font> <select name="lang" id="lan"
						style="width: 34%;">
							<option value="none">Select</option>
							<option value="Hindi">Hindi</option>
							<option value="English">English</option>
							<option value="Marathi">Marathi</option>
							<option value="Bhojpuri">Bhojpuri</option>
							<option value="Kannad">Kannada</option>
							<option value="Tamil">Tamil</option>
					</select><br> <br></td>
				</tr>
				<tr>
					<th>Select Gender <font color="red"><span>*</span></th>
					<td><input type="radio" name="gender" value="male">Male
						<input type="radio" name="gender" value="female"> Female <input
						type="radio" name="gender" value="other "> Other<br>
					<br></td>
				</tr>

				<tr>
					<th>Select Specialized <font color="red"><span>*</span></th>
					<td><input type="checkbox" name="generalized" value="Java ">
						java <input type="checkbox" name="generalized" value="html ">
						HTML <input type="checkbox" name="generalized" value="Css ">
						CSs <br></td>
				</tr>
				<tr>
					<th>Enter Full Address <font color="red"><span>*</span></th>
					<td><textarea rows="4" cols="30" id="addr" name="address"style="width: 100%; height: 45%"></textarea><br> <br></td>
				</tr>


				<tr>
					<td><input type="submit" class="btn btn-success"value="Submit" onclick="return ValidateEmail()"style="width: 123%; height: 45px; margin-bottom: 20px;"></td>

					<td><input type="reset" class="btn btn-info" value="Reset"style="width: 62%; margin-left: 38%; margin-bottom: 8%; height: 45px; margin-bottom: 20px;"></td>
				</tr>


			</table>

		</form>
	</center>
		<jsp:include page="Footer.jsp" />
	
	<%
		}
	%>
	<%
		if (session.getAttribute("fpassword") == null) {
	%>
	<a href="login"> Session out Login First</a>
	
	
	
	<%
		}
	%>
</body>
</html>