<!-- IT19114736 De Silva K.C.C.C -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin account</title>
<link rel="stylesheet" type="text/css" href="styleTable.css"/>
<link rel="stylesheet" href="styleSidebar.css">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
</head>
<body>

<!-- ------------------------------side bar---------------------------------------- -->

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
    
<!-- -------------------------------import header---------------------------------------- -->
    <div class="header"><jsp:include page="header.jsp"></jsp:include></div>  
    <div class="info">
    <section>
	
<!-- -----------------------------Admin Account Content----------------------------------- -->
	<div class="address" align="center">
		
		<h4>You Have Successfully Log into the System. Now We Can Make Things Easier Together.</h4>
	</div>
	<hr/>
		<br>
		<h1 align="center">Admin Profile</h1>
		<br>
	<hr/>
	<br>
	<div align="center"><img src = "img/Circular-headshots2.png" style="height: 150px"></div>
	
	
	
	<c:set var="id" value="${a.idadmin}"/>
	<c:set var="name" value="${a.name}"/>
	<c:set var="username" value="${a.uname}"/>
	
	<div align="center">  
	<table class="tb" border="1" bgcolor="#edf3f7" align="center" width="40%" height = "40%" cellpadding="30px"> 
	    
	<c:forEach var="a" items="${adminDetails}">
	
	<tr>
		<td>Admin ID</td>
		<td>${a.idadmin}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${a.name}</td>
	</tr>
	<tr>
		<td>User Name</td>
		<td>${a.uname}</td>
	</tr>
	
	</c:forEach>
	</table>
	</div>  
	
	</section>
    </div>
    </div>
    </div>

</body>
</html>