<!-- IT19114736 De Silva K.C.C.C -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>patient details</title>
</head>
<link rel="stylesheet" type="text/css" href="styleTable.css"/>
<link rel="stylesheet" href="styleSidebar.css">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
<style>
.cont {
	padding: 10px;
	background-color: white;
	margin-left: 150px;
	margin-right: 150px;
	margin-top: o;
	margin-bottom: 10px;
	
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
	
<!-- -----------------------------Patient Details Content----------------------------------- -->
	<div class="address" align="center">
		
		<h4>By a simple click on Update patient button you can easily update the Patient Information</h4>
	</div>
	<hr/>
		<br>
		<h1 align="center">Patient Details</h1>
		<br>
	<hr/>
	<br><br>
	
	<div align="center">
	<div class="cont">  
	<table class="table" border="1"bgcolor="#e1f0fc" align="center" width="90%" cellpadding="15px">
	<c:forEach var="pa" items="${pDetails}">
	
	<c:set var="iduser" value="${pa.iduser}"/>
	<c:set var="name" value="${pa.name}"/>
	<c:set var="age" value="${pa.age}"/>
	<c:set var="phone" value="${pa.phone}"/>
	<c:set var="address" value="${pa.address}"/>
	<c:set var="gender" value="${pa.gender}"/>
	<c:set var="Blood_group" value="${pa.blood_group}"/>
	<c:set var="description" value="${pa.description}"/>
	
	<br><br>
	<tr>
		<td>User ID</td>
		<td>${pa.iduser}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${pa.name}</td>
	</tr>
	<tr>
		<td>Age</td>
		<td>${pa.age}</td>
	</tr>
	<tr>
		<td>Phone</td>
		<td>${pa.phone}</td>
	</tr>
	<tr>
		<td>Address</td>
		<td>${pa.address}</td>
	</tr>
	<tr>
		<td>Gender</td>
		<td>${pa.gender}</td>
	</tr>
	<tr>
		<td>Blood Group</td>
		<td>${pa.blood_group}</td>
	</tr>
	<tr>
		<td>Description</td>
		<td>${pa.description}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	<br><br>
	
	<c:url value="updatePatient.jsp" var="pUpdate">
		<c:param name="iduser" value="${iduser}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="age" value="${age}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="gender" value="${gender}"/>
		<c:param name="Blood_group" value="${Blood_group}"/>
		<c:param name="description" value="${description}"/>
	</c:url>
	
	<a href="${pUpdate}">
	<input type="button" name="update" value="Go to Update Patient" class="btn">
	</a>
	
	
	<c:url value="deletePatient.jsp" var="pDelete">
		<c:param name="iduser" value="${iduser}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="age" value="${age}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="gender" value="${gender}"/>
		<c:param name="Blood_group" value="${Blood_group}"/>
		<c:param name="description" value="${description}"/>
	</c:url>
	<a href="${pDelete}">
	<input type="button" name="delete" value="Go to Delete Patient" class="btn">
	</a>
	
	
	</div>
	</div>
	<!---------------------------------------------------- End of Page Content ------------------------------------------------------------->
	</section>
    </div>
    </div>
    </div>	

</body>
</html>