<!-- IT19114736 De Silva K.C.C.C -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Id</title>
</head>
<link rel="stylesheet" type="text/css" href="styleAddPatient.css"/>
<link rel="stylesheet" href="styleSidebar.css">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
<style>
	
	.cont{
		padding: 20px;
		background-color: white;
		margin-left: 400px;
		margin-right: 400px;
		margin-top: 100px;
		margin-bottom: 100px;
		}
			
</style>
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
	
<!-- -----------------------------Get Patient Content----------------------------------- -->


	<div class="cont">
	<form action="pDetails" method="post">
		
		<p align="center"><b>Enter patient id to update patient details</b></p>
		<hr>
		<b>Patient id : </b><br><br>
		<input type="number" name="id" placeholder ="Enter patient id to update details"> 
		<br><br><br>
		
		<div align="center"><input type="submit" name="submit" value="Submit" class="btn"></div>
	</form>
	</div>


	</section>
    </div>
    </div>
    </div>
</body>
</html>