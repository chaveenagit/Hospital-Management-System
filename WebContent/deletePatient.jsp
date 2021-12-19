<!-- IT19114736 De Silva K.C.C.C -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Patient</title>
<link rel="stylesheet" type="text/css" href="styleAddPatient.css"/>
<link rel="stylesheet" href="styleSidebar.css">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
<script>
function myFunction() {
  alert("You have successfully deleted Patient Information!");
}
</script>
</head>
<body>

<!-- -----------------------------side bar---------------------------------------- -->
    <div class="wrapper">
    <div class="sidebar">
        <h2>MENU</h2>
        <ul>
            <li><a href="addPatient.jsp"><i class="fas fa-address-card"></i>Add Patient</a></li>
            <li><a href="getPatient.jsp"><i class="fas fa-trash"></i>Update  or <br>Remove Patient</a></li>
            <li><a href="BillInsert.jsp"><i class="fas fa-address-card"></i>Add Bill</a></li>
            <li><a href="bill.jsp"><i class="fas fa-trash"></i>Update or<br>Remove Bill</a></li>
            <li><a href="#"><i class="fas fa-address-card"></i>Add Ward</a></li>
            <li><a href="#"><i class="fas fa-trash"></i>Update or <br>Remove Ward</a></li>
        </ul> 
        <div class="social_media">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="main_content">
 <!-- -----------------------------import header---------------------------------------- -->
    <div class="header"><jsp:include page="header.jsp"></jsp:include></div>  
    <div class="info">
    <section>
	
<!-- -----------------------------Delete Patient Content----------------------------------- -->

	<%
		int iduser = Integer.parseInt(request.getParameter("iduser")); 
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String Blood_group = request.getParameter("Blood_group");
		String description = request.getParameter("description");
	%>

	<form action="deletePatient" method="post">
		<div class="contain">
			<br><br>
			<h1 align="center"><b>Delete Patient Record</b></h1><br><br>
			<p align="center"><b>You can easily delete patient record that you have selected.</b></p>
			<hr>
			
		    <b>Patient id :</b><br>
			<input type="text" name="iduser" value="<%= iduser %>" readonly><br><br>
			
			<b>Name :</b><br>
			<input type="text" name="name" value="<%= name %>" readonly><br><br>
			
			<b>Age :</b><br> 
			<input type="number" name="age" value="<%= age %>" readonly><br><br>
			
			<b>Phone Number :</b><br> 
			<input type="tel" name="phone" value="<%= phone %>" readonly><br><br>
			
			<b>Address :</b><br> 
			<input type="text" name="address" value="<%= address %>" readonly><br><br>
			
			<b>Gender :</b><br>
			<input type="text" name="gender" value="<%= gender %>" readonly><br><br>
			
			<b>Blood Group :</b><br> 
			<input type="text" name="Blood_group" value="<%= Blood_group %>" readonly><br><br>
			
			<b>Disease :</b><br> 
			<input type="text" name="description" value="<%= description %>" readonly><br><br>
		
		<div align="center"><input type="submit" name="submit" value="Delete Patient" class="btn" onclick="myFunction()"></div>
		</div>
	</form>
	
	
	</section>
    </div>
    </div>
    </div>


</body>
</html>