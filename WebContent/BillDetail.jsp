<!-- IT19117874
  Amarasinghe W.K.P.G -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	
<!-- -----------------------------Bill Details Content----------------------------------- -->

	<h1 align="center">Bill Details</h1>
    <br>
	<hr/>
	
	<div align="center">
	<div class="cont"> 
	<table class="table" border="1"bgcolor="#e1f0fc" align="center" width="90%" cellpadding="15px">
	<c:forEach var="bil" items="${billDetails}">
	
	<c:set var="bId" value="${bil.bId}"/>
	<c:set var="pId" value="${bil.pId}"/>
	<c:set var="roomCh" value="${bil.roomCh}"/>
	<c:set var="doctCh" value="${bil.doctCh}"/>
	<c:set var="testFee" value="${bil.testFee}"/>
	<c:set var="otheCh" value="${bil.otheCh}"/>
	<c:set var="total" value="${bil.total}"/>
	
	<tr>
		<td>Bill No</td>
		<td>${bil.bId}</td>
	</tr>
	<tr>
		<td>Patient ID</td>
		<td>${bil.pId}</td>
	</tr>
	
	<tr>
		<td>Room chargers</td>
		<td>${bil.roomCh}</td>
	</tr>
	<tr>
		<td>Doctor Fees</td>
		<td>${bil.doctCh}</td>
	</tr>
	<tr>
		<td>Tests Fees</td>
		<td>${bil.testFee}</td>
	</tr>
	<tr>
		<td>Other chargers</td>
		<td>${bil.otheCh}</td>
	</tr>
	<tr>
		<td>Total Bill</td>
		<td>${bil.total}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	
	<c:url value="updateBill.jsp" var="billupdate">
		<c:param name="bId" value="${bId}"/>
		<c:param name="pId" value="${pId}"/>
		<c:param name="roomCh" value="${roomCh}"/>
		<c:param name="doctCh" value="${doctCh}"/>
		<c:param name="testFee" value="${testFee}"/>
		<c:param name="otheCh" value="${otheCh}"/>
		<c:param name="total" value="${total}"/>
	</c:url>
	<br><br>
	<a href="${billupdate}">
	<input type="button" name="update" value="Update Bill" class="btn">
	</a>
	
	
	<c:url value="deleteBill.jsp" var="billdelete">
		<c:param name="bId" value="${bId}"/>
		<c:param name="pId" value="${pId}"/>
		<c:param name="roomCh" value="${roomCh}"/>
		<c:param name="doctCh" value="${doctCh}"/>
		<c:param name="testFee" value="${testFee}"/>
		<c:param name="otheCh" value="${otheCh}"/>
		<c:param name="total" value="${total}"/>
	</c:url>
	<a href="${billdelete}">
	<input type="button" name="delete" value="Delete Bill" class="btn">
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