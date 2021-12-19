<!-- IT19114736 De Silva K.C.C.C -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Patient</title>
<link rel="stylesheet" type="text/css" href="styleAddPatient.css"/>
<link rel="stylesheet" href="styleSidebar.css">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
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
	
<!-- -----------------------------Add Patient Content----------------------------------- -->

	
	<form action="addPatient" method="post">
		<div class="contain">
			<br><br>
			<h1 align="center"><b>Add Patient</b></h1><br><br>
			<p align="center"><b>You can easily add patient to the Hospital Management System by submitting a form.</b></p>
			<hr>
			
			<b>Patient id :(give a numeric id that have not use before)</b><br>
			<input type="text" name="id"><br><br>
			
			<b>Name :</b><br>
			<input type="text" name="name"><br><br>
			
			<b>Age :</b><br> 
			<input type="number" name="age" min ="0"><br><br>
			
			<b>Phone Number :(Eg: 0913434349)</b><br> 
			<input type="tel" name="phone" pattern="[0-9]{10}" required><br><br>
			
			<b>Address :</b><br> 
			<textarea name="address" rows="4" cols="50" required></textarea><br><br>
			
			<b>Gender :</b><br>
			<select class="gender" name="gender">
				  <option value="male">Male</option>
				  <option value="female">Female</option>
			</select><br><br>
			
			<b>Blood Group :</b><br> 
			<input type="text" name="Blood_group"><br><br>
			
			<b>Disease :</b><br> 
			<textarea name="description" rows="4" cols="50" required></textarea><br><br>
			
			
			<div align="center"><input type="submit" name="submit" value="Add Patient" class="btn"></div>
		</div>
	</form>
	
	
	</section>
    </div>
    </div>
    </div>
	

</body>
</html>