<!-- IT19117874
  Amarasinghe W.K.P.G -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="styleAddPatient.css"/>
<link rel="stylesheet" href="styleSidebar.css">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
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
	
<!-- -----------------------------Insert Bill Content----------------------------------- -->


<form action="insert" method="post">
	<div class="contain">
	<br><br>
		<h1 align="center"><b>Add Bill</b></h1><br><br>
		<hr>
		
		<b>Bill No(LKR)</b><br>
		<input type="text" name="bId"><br><br>

		<b>Patient ID(LKR)</b><br>
		<input type="text" name="pId"><br><br>
	
	
		<b>Room Chargers(LKR)</b><br>
		<input type="text" name="roomChar"><br><br>
	
	
		<b>Doctor fees(LKR)</b><br>
		<input type="text" name="docFee"><br><br>
	
		<b>Tests Chargers(LKR)</b><br>
		<input type="text" name="testsFee"><br><br>
	
	
		<b>Others Chargers(LKR)</b><br>
		<input type="text" name="otherFee"><br><br>
	
		<b>Total Bill(LKR)</b><br>
		<input type="text" name="totlBill"><br><br>
	
	<div align="center"><input type="submit" name="Submit" value="Add Bill" class="btn"></div>
</div>		
</form>

	
	</section>
    </div>
    </div>
    </div>

</body>
</html>