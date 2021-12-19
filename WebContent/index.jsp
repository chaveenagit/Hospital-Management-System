<!-- IT19114736 De Silva K.C.C.C -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styleIndex.css">
<link rel="stylesheet" type="text/css" href="styleNavbar.css">
<link rel="stylesheet" type="text/css" href="styleForm.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<script src="scriptnavbar.js"></script>
<style>
	.cont{
		padding: 10px;
		background-color: white;
		opacity:60%;
		width:12%;
		margin-left:350px;
		}
</style>
<title>index</title>
</head>
<body>
	
	<div id="navbar">
	  <a id="logo"><img src="img/Cure-Logo-.png"></a>
	  <a href="#contact">CONTACT</a>
	  <a href="#doctor">DOCTORS</a>
	  <a href="#departments">DEPARTMENTS</a>
	  <a href="#abouts">ABOUT</a>
	  <a href="#homes">HOME</a>
	</div>
	
	<div id="homes" class="home" >
	<div class="cntnt"><br><br><br><br><br>
	<div class="line1"><br><b>WELCOME TO CURE HOSPITAL MANAGEMENT SYSTEM</b></div>
	<div class="line2">We are here <br>for your Care<br><br><br><br><br><br></div>
	</div>
	<br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br>
	
<!-- -----------------------login form------------------------------------ -->	
	<div class="cont">
	<form action="log" method="post">
		Operator Login
		<input type="text" name="uid" placeholder="User Name"> <br>
		<input type="password" name="pwd" placeholder="Password"> <br>
		
		<input type="submit" name="submit" value="login">
	</form>
	<br>
	
	
	<form action="logAdmin" method="post">
		Administer Login
		<input type="text" name="uname" placeholder="User Name"> <br>
		<input type="password" name="pass" placeholder="Password"> <br>
		
		<input type="submit" name="submit1" value="login">
	</form>
	</div>
<!-- -----------------------end of login form------------------------------------ -->	
	</div>
	
	<div id="abouts" class="about" >
 	<div class="photoabt">
 	<br><br><br><br><br><br><br><br><br><br><br><br>
 	<br><br><br><br><br><br><br><br><br><br><br><br>
 	<br><br><br><br><br><br><br><br><br><br><br><br>
 	</div>
	<div class="abtcntnt">
	<div class="abtln1">We Are Cure Hospitals. eHospital Systems</div>
	<div class="abtln2">The Hospital Management Information System Software allows easy access to patient 
		data to generate various records, including classification based on demographic, gender, age, and 
		so on. It is especially beneficial at the ambulatory point, hence enhancing continuity of care. 
		Internet-based access improves the ability to access such data remotely.
		It helps as a decision support system for the hospital authorities for developing comprehensive health 
		care policies.
		It efficiently engenders the running of finance, the diet of patients, and also the distribution of medical 
		aid. It gives a vivid picture of future hospital growth.</div><br>
	<a href="#" class="abtcntct">Contact Us</a>
	</div>
	</div>
	<div class="services">
		<div class="srvctitle">Our Services</div>
		<div class="srvcntnt">	
		<div class="cards">
		<div class="srvcards"><div class="icon"><img src="img/icons/ambulance.png"></div>
			<div class="srvbx">
			<div class="srvstop">Emergency Services</div><br>
			<div class="srvscntnt">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div>
			</div>
		</div>
		<div class="srvcards"><div class="icon"><img src="img/icons/doctor.png"></div> 
		<div class="srvbx">
			<div class="srvstop">Qualified Doctors</div><br>
			<div class="srvscntnt">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div>
			</div>
			</div>
		<div class="srvcards"><div class="icon"><img src="img/icons/steth.png"></div>
		<div class="srvbx">
			<div class="srvstop">Outdoors Checkup</div><br>
			<div class="srvscntnt">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div>
			</div>
		</div>
		<div class="srvcards"><div class="icon"><img src="img/icons/24-hours.png"></div>
		<div class="srvbx">
			<div class="srvstop">24 Hours Service</div><br>
			<div class="srvscntnt">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div>
			</div></div>
		</div>
		<div class="quotesection">
			<div class="quote">Medicine is a science of and an art of probability</div>
			<div class="qt">by Cure Limited</div>
		</div>
		</div>
	</div>
	<div class="department" id="departments">
	<div class="depphto"></div>
	<div class="dep"><img src="img/icons/steth.png"><div class="deptop">Neurology</div><div class="depdes">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div></div>
	<div class="dep"><img src="img/icons/steth.png"><div class="deptop">Surgical</div><div class="depdes">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div></div>
	<div class="dep"><img src="img/icons/steth.png"><div class="deptop">Dental</div><div class="depdes">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div></div>
	<div class="dep"><img src="img/icons/steth.png"><div class="deptop">Opthalmology</div><div class="depdes">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div></div>
	<div class="dep"><img src="img/icons/steth.png"><div class="deptop">Cardiology</div><div class="depdes">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div></div>
	<div class="dep"><img src="img/icons/steth.png"><div class="deptop">Traumatology</div><div class="depdes">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div></div>
	<div class="dep"><img src="img/icons/steth.png"><div class="deptop">Nuclear Magnetic</div><div class="depdes">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div></div>
	<div class="dep"><img src="img/icons/steth.png"><div class="deptop">X-ray</div><div class="depdes">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div></div>
	<div class="dep"><img src="img/icons/steth.png"><div class="deptop">Cardiology</div><div class="depdes">Hospital Management System is easy to use and eliminates errors caused by handwriting.</div></div>
	</div>
	<div class="doctors" id="doctor">
		<div class="line2 align">Our Qualified Doctors</div>
		<div class="line3 align">Hospital Management System is easy to use and eliminates errors caused by handwriting.<br>The latest technology gives perfect performance to pull up information from hosted or cloud servers.</div>
		
		<div class="doccards">
		<div class="card"><div class="docpic" style="background-image:url('img/doctor-1.jpg')"><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></div>
		<div class="docname">Dr.Richards</div><div class="line1 align">Neurologist</div><div class="abtdoc">I am an ambitious workaholic, but apart from that, pretty simple person.</div></div>
		<div class="card"><div class="docpic" style="background-image:url('img/doctor-2.jpg')"></div><div class="docname">Dr.Richards</div><div class="line1 align">Opthalmologist</div><div class="abtdoc">I am an ambitious workaholic, but apart from that, pretty simple person.</div></div>
		<div class="card"><div class="docpic" style="background-image:url('img/doctor-3.jpg')"></div><div class="docname">Dr.Richards</div><div class="line1 align">Dentist</div><div class="abtdoc">I am an ambitious workaholic, but apart from that, pretty simple person.</div></div>
		<div class="card"><div class="docpic" style="background-image:url('img/doctor-4.jpg')"></div><div class="docname">Dr.Richards</div><div class="line1 align">Pediatrician</div><div class="abtdoc">I am an ambitious workaholic, but apart from that, pretty simple person.</div></div>
		</div>
	</div>
	<div class="contactus" id="contact">
		<div class="line2 align">Contact Us</div>
		<div class="line3 align">We are here for you.<br>You can contact us anytime.We are here to help you.</div>
		<div class="cntctgrd">
		<div class="cntctcrd"><div class="cntcticn"><img src="img/icons/address.png"></div><div class="topic">ADDRESS</div><div class="line3 align">No:3/27,Open Street, <br> Malabe</div></div>
		<div class="cntctcrd"><div class="cntcticn"><img src="img/icons/phone-call.png"></div><div class="topic">CONTACT NUMBER</div><div class="line3">+94719090876</div></div>
		<div class="cntctcrd"><div class="cntcticn"><img src="img/icons/send.png"></div><div class="topic">E-MAIL ADDRESS</div><div class="line3">support@cure.com</div></div>
		<div class="cntctcrd"><div class="cntcticn"><img src="img/icons/worldwide.png"></div><div class="topic">WEBSITE</div><div class="line3"><a href="#">info@curesite.com</a></div></div>
		</div>
		<div class="formgrid">
		<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=asiri%20hospital&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.org">embed google map</a></div></div>
		<div class="form">
		<form action="#" method="POST">
		<input  type="text" name="name" placeholder="Name" required>
		<input  type="text" name="subject" placeholder="Subject" required>
		<input type="email" name="email" placeholder="E-Mail" required>
		<textarea name="message" placeholder="Please tell us about your inquiry" rows="10"></textarea>
		<input type="submit" value="Send" name="send">
		</form>
		</div>
	</div>
	<div class="footer">
	<div><div class="topic">We Are Cure</div> <div class="line3">It improves the communication and interaction of doctors with their patients</div></div>
	<div><div class="topic">Benefits</div> <div class="line3"><img class="imgarr" src="img/icons/arrow.png"><a href="#">Easy access</a><br><img class="imgarr" src="img/icons/arrow.png"><a href="#abouts">Cost Effective</a><br><img class="imgarr" src="img/icons/arrow.png"><a href="#departments">Improved Efficiency</a><br><img class="imgarr" src="img/icons/arrow.png"><a href="#doctor">Data Security</a><br><img class="imgarr" src="img/icons/arrow.png"><a href="#contact">Reduces Scope of Error</a></div></div>
	<div><div class="topic">Services</div> <div class="line3"><img class="imgarr" src="img/icons/arrow.png">Neurology<br><img class="imgarr" src="img/icons/arrow.png">Surgical<br><img class="imgarr" src="img/icons/arrow.png">Dental<br><img class="imgarr" src="img/icons/arrow.png">Opthalmology<br><img class="imgarr" src="img/icons/arrow.png">Cardiology<br><img class="imgarr" src="img/icons/arrow.png">Traumatology<br><img class="imgarr" src="img/icons/arrow.png">Nuclear Magnetic<br><img class="imgarr" src="img/icons/arrow.png">X-ray</div></div>
	<div><div class="topic">Have a Question?</div> <div class="line3"><img class="imgar" src="img/icons/pin.png">Cure Hospital<br><br><img class="imgar" src="img/icons/phone.png">+94719090876<br><br><img class="imgar" src="img/icons/mail.png">support@cure.com</div></div>
	
	</div>
</body>
</html>
	
