<!-- IT19114736 De Silva K.C.C.C -->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Patient</title>
<link rel="stylesheet" type="text/css" href="styleAddPatient.css"/>
<link rel="stylesheet" href="styleSidebar.css">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
<script>
function myFunction() {
  alert("You have successfully update Patient Information! You will be navigate to patient Details page to show updated information");
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
	
<!-- -----------------------------Update Patient Content----------------------------------- -->

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

	<form action="updatePatient" method="post">
		<div class="contain">
			<br><br>
			<h1 align="center"><b>Update Patient Information</b></h1><br><br>
			<p align="center"><b>You can easily update patient information.</b></p>
			<hr>
			
		    <b>Patient id :</b><br>
			<input type="text" name="iduser" value="<%= iduser %>" readonly><br><br>
			
			<b>Name :</b><br>
			<input type="text" name="name" value="<%= name %>"><br><br>
			
			<b>Age :</b><br> 
			<input type="number" name="age" value="<%= age %>"><br><br>
			
			<b>Phone Number :</b><br> 
			<input type="tel" name="phone" value="<%= phone %>"><br><br>
			
			<b>Address :</b><br> 
			<input type="text" name="address" value="<%= address %>"><br><br>
			
			<b>Gender :</b><br>
			<input type="text" name="gender" value="<%= gender %>"><br><br>
			
			<b>Blood Group :</b><br> 
			<input type="text" name="Blood_group" value="<%= Blood_group %>"><br><br>
			
			<b>Disease :</b><br> 
			<input type="text" name="description" value="<%= description %>"><br><br>
		
		<div align="center"><input type="submit" name="submit" value="Update Details" class="btn" onclick="myFunction()"></div>
		</div>
	</form>
	
	
	</section>
    </div>
    </div>
    </div>

</body>
</html>