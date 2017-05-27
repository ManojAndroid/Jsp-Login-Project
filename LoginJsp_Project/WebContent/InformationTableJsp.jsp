<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css"href = "css/informationtable.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/informationtable.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%
		if (session.getAttribute("fpassword") != null) {
	%>
<jsp:include page="Header.jsp" />
	  <% ResultSet rs = (ResultSet) session.getAttribute("data");%>
<div class="container">
		<table class="table" align="center" style="width:42%; border: 2px solid black">
			<tr>
				<td colspan="2" style="background-color:#7397b1; padding: 10px; border: 2px solid black; text-align: -webkit-center;">Employees Information</td>
			</tr>
			<tr style="background-color: #e3f2fd; padding: 10px; border: 2px solid black;text-align: -webkit-center;">
				<th style="background-color: #e3f2fd; padding: 10px; border: 2px solid black;text-align: -webkit-center;">Employees Id</th>
				<th style="background-color: #e3f2fd; padding: 10px; border: 2px solid black;text-align: -webkit-center;">Employees Name</th>
			</tr>

			<%
				int i = 0;
				while (rs.next()) {
			%>
			<tr id="dont"
				onclick="get('<%=rs.getString(9)%> ','<%=rs.getString(1)%> ','<%=rs.getString(2)%> ',' <%=rs.getString(3)%>','<%=rs.getString(4)%> ','<%=rs.getString(5)%> ',' <%=rs.getString(6)%> ',' <%=rs.getString(7)%>')"
				style="background-color: #e3f2fd; padding: 10px; border: 2px solid black;">

				<td style="background-color: #e3f2fd;; padding: 10px;text-align: -webkit-center;">
				<p id="data" data-toggle="modal" data-target="#myModal"><%=rs.getString(9)%></p></td>



				<td style="background-color: #e3f2fd; padding: 10px;text-align: -webkit-center;">
				<p data-toggle="modal" data-target="#myModal"><%=rs.getString(1)%></p></td>
				<%
					}
				%>
				
			</tr>
		</table>
	</div>
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content" style="width:90%">
				 <div class="modal-header" style="background-color:#e3f2fd ">
					<button class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Edit Your information</h4>
				 </div>
				<div class="modal-body">
					<div style="min-height: 30px; outline: none">
					 <table>
						<form action="UpdateServlet" method="post">
							<tr><th>ID: </th> 
						       <td><input type="text" id="id" name="id" class="inputs" readonly="readonly"><br><br></td></tr>
							
							<tr><tH>FirstName</tH>
							  <td><input type="text" id="fname" name="fname" class="inputs" required><br> <br></td></tr>
						   
						    <tr><tH>LastNmae</tH>
							<td> <input type="text"id="sname" name="sname" class="inputs"> <br><br></td> </tr>
						   
						    <tr><tH>Age</tH>
							  <td> <input type="number" id="age"  name="age" class="inputs" required ><br> <br></td></tr>
							https://github.com/
							<tr><tH>Language</tH>
						    <td><input type="text" id="language"  name="language"  class="inputs"> <br><br></td></tr>
							
							<tr><tH>Gender</tH>
							<td> <input type="text" id="gender" name="gender" class="inputs"> <br><br></td></tr>
							
							 <tr><tH>Skill</tH>
							 <td> <input type="text" id="skill" name="skill"  class="inputs"><br> <br></td></tr>
							
							 <tr><tH>Address</th>
							 <td><input type="text" id="address" name="address" class="inputs"><br><br></td></tr>
						  
						    <tr><td><input type="submit" value="Edit Info" id="btnSave" class="btn btn-info"  onclick="return Validation() " style="width:250px;  height: 49px;"></td>
							<td><input  data-toggle="modal" data-target="#demo" type="button" value="Delete" class="btn btn-danger"style="width:250px; height: 49px;margin-left: 15px;"></td></tr>
						</form>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="demo" role="dialog">
		<div class="modal-dialog">
		<div id="try" class="modal-content">
		     <p>Are you sure You want to delete ?</p>
		     <form action="delete" method="post">
		         <input type="hidden" id="uid" name="uid" class="inputs">
			     <input type="submit" class="btn btn-danger" id="ok" name="ok" value="OK"/>
			     <input  type="button" class="btn btn-info" data-dismiss="modal"id="cancel"value="Cancel"/>
		   </form>
	   </div>
	 </div>
  </div>
  	<jsp:include page="Footer.jsp" />
  	<%
		}
	%>
  <%
		if (session.getAttribute("fpassword") == null) {
	%>
	<a href="login"> Login First Session out</a>
	
	<%
		}
	%>
	
</body>
</html>