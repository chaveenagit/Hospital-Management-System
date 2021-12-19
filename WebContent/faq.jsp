<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>faq</title>
<link rel="stylesheet" href="styleSidebar.css">
<link rel="stylesheet" type="text/css" href="styleFaq.css"/>
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
	
<!-- -----------------------------faq page Content----------------------------------- -->

	<div class="box">
	   <p class="heading">FAQs</p>
	   <div class="faqs">
	   <b>
	      <details>
	         <summary><h3>What does the Cure Hospital Management System do?</h3></summary>
	         <p class="text">The Cure HMS delivers paperless, software-assisted, vital-sign observation recording and review 
	         and immediate care-protocol guidance at the bedside while simultaneously archiving the records on a central server, 
	         feeding them to an EHR (if any), displaying the records at the Ward Central station and allowing remote access to 
	         authorised users such as clinicians and management.</p>
	      </details>
	      <details>
	         <summary><h3>Who uses it?</h3></summary>
	         <p class="text">The principal bedside user is the nurse, who uses it for all patient ‘rounding’ activities and follow-up. 
	         The clinical staff also use it either at point-of-care or remotely to review patient status and trends. The Ward Manager uses 
	         it centrally to maintain close supervision of the real-time status of all patients and to monitor staff workload. Compliance 
	         and Quality staff may use it to monitor adherence to protocol and care policy</p>
	      </details>
	      <details>
	         <summary><h3>How does it function?</h3></summary>
	         <p class="text">The Cure HM system is typically presented to the user via a touch screen tablet mounted on the vital-sign monitor 
	         equipment. The system accepts the  vital-signs from the monitor equipment and combines them with 
	         other observations added directly by the nurse in order to compile a complete observation record, including (i) calculating any 
	         Early-Warning-Score that a hospital may use and (ii) providing real-time protocol guidance to the nurse as defined by the hospital’s 
	         policies. The tablet links by WiFi to the Server and from there the observation record is immediately posted to the EHR (if any) 
	         and to the Ward Central Station. Authorised users may remotely access these records.</p>
	      </details>
	      <details>
	         <summary><h3>How secure is patient data?</h3></summary>
	         <p class="text">All data is encrypted and the system is password protected.</p>
	      </details>
	       <details>
	         <summary><h3>How much training is required?</h3></summary>
	         <p class="text">Cure HMS was designed in compliance with the international usability standard (ISO62366) and it presents a highly 
	         intuitive user-interface. As such, typical staff training times are less than an hour.</p>
	      </details>
	      </b>
	   </div>
	</div>
	
	</section> 
    </div>
    </div>
    </div>
</body>
</html>