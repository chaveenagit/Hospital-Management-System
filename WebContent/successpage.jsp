<!-- IT19114736 De Silva K.C.C.C -->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
<style>
	body{
		background-image: url("img/portrait1.jpg");
		background-repeat: no-repeat, repeat;
		background-color:#5298f8;
	}
	.cont{
		padding: 20px;
		background-color: white;
		margin-left: 500px;
		margin-right: 500px;
		margin-top: 200px;
		margin-bottom: 200px;
		}
		
	.btn {
		
		background-color: #5298f8;
		color: white;
		padding: 16px 20px;
		margin: 8px 0;
		border: none;
		cursor: pointer;
	    width: 30%;
		opacity: 0.9;
		align-content: center;
	}

	.btn:hover {
		opacity: 2;
	}
			
</style>
<title>Insert success</title>
</head>
<body>
	
	<div class="cont" align="center">
	<br>
	<h3>You have successfully add Patient to the system.</h3><br>
	<h2>S U C C E S S !</h2>
	<br><br><br>
	<div align="center">
	<a href= "useraccount.jsp"><input type="button"  value="Go Back Home" class="btn"></a>
	<a href= "getPatient.jsp"><input type="button"  value="Update Patient Info" class="btn"></a>
	<br>
	</div>
	</div>
	
	

</body>
</html>