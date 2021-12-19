<!-- IT19117874
  Amarasinghe W.K.P.G -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	
<!-- -----------------------------Delete Bill Content----------------------------------- -->

	<%
		
	String bId = request.getParameter("bId");
	int pid = Integer.parseInt(request.getParameter("pId"));
	int roomch = Integer.parseInt(request.getParameter("roomCh"));
	int doctfee = Integer.parseInt(request.getParameter("doctCh"));
	int testfee = Integer.parseInt(request.getParameter("testFee"));
	int otherch = Integer.parseInt(request.getParameter("otheCh"));
	int Total = Integer.parseInt(request.getParameter("total"));
	
	%>
	
	
	<form action="billDelete" method="post">
	<div class="contain">
			<br><br>
			<h1 align="center"><b>Delete Bill</b></h1><br><br>
			<hr>

		<b>Bill No</b><br>
		<input type="text" name="bId" value="<%= bId %>" readonly><br><br>
	
		<b>Patient ID</b><br>
		<input type="text" name="pId" value="<%= pid %>" readonly><br><br>
	
	    <b>Room Chargers(LKR)</b><br>
		<input type="text" name="roomChar" value="<%= roomch %>" readonly><br><br>
	
		<b>Doctor fees(LKR)</b><br>
		<input type="text" name="docFee" value="<%= doctfee %>" readonly><br><br>
	
		<b>Tests Chargers(LKR)</b><br>
		<input type="text" name="testsFee" value="<%= testfee %>" readonly><br><br>
	
		<b>Others Chargers(LKR)</b><br>
		<input type="text" name="otherFee" value="<%= otherch %>" readonly><br><br>
	
		<b>Total Bill(LKR)</b><br>
		<input type="text" name="totlBill" value="<%= Total %>" readonly><br><br>
	
	<div align="center"><input type="submit" name="Submit" value="Delete Bill" class="btn"></div>
	</div>
</form>

	</section>
    </div>
    </div>
    </div>
	
</body>
</html>