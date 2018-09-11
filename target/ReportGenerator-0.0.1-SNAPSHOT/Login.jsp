<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.json.simple.JSONObject"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Report Generator</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/util.css" />" rel="stylesheet">
	
	<link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/fonts/iconic/css/material-design-iconic-font.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/vendor/animate/animate.css" />" rel="stylesheet">
	
	<link href="<c:url value="/resources/vendor/css-hamburgers/hamburgers.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/vendor/animsition/css/animsition.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/vendor/select2/select2.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/vendor/daterangepicker/daterangepicker.css" />" rel="stylesheet">
<!-- 	 <link rel="icon" type="image/png" href="images/icons/favicon.ico"/> -->
	 <link href="<c:url value="/resources/images/icons/favicon.ico" />" rel="icon" type="image/png" >
	 
	 

</head>
<body>
	
	<div class="limiter">
	
<%-- 	<img src="<c:url value="/resources/images/left_arrow.png" />" alt="" /> --%>
<%-- 	<img src="<c:url value="/resources/images/left_arrow.png" />" alt="" /> --%>
	<div class="container-login100" style="background-image:url(<c:url value='/resources/images/bg-01.jpg' />)">
<!-- 		<div class="container-login100" style="background-image: "<c:url value='/resources/images/bg-01.png' />;"> -->
		<!--<div class="container-login100" style="background-image: url('images/eHealthLogo.png');">-->
			<div class="wrap-login100">
<!-- 				<form class="login100-form validate-form"> -->
					<span class="login100-form-logo">
<!-- 					<img alt="logo" src="images/logo_2.png" class="zmdi zmdi-landscape"/> -->
<img alt="logo" src="<c:url value="/resources/images/logo_ehealth.png" />" class="zmdi zmdi-landscape"/>
<!-- 						<i class="zmdi zmdi-landscape"></i> -->
					</span>
					

					<span class="login100-form-title p-b-34 p-t-27">
						Report Generator
					</span>
					
				
<!-- <div class="wrap-input100 validate-input" data-validate = "Please show your health card">Please show your health card -->
<!-- 						<input class="input100" type="text" name="username" placeholder="Please show your health card.."  -->
<!-- 						 onkeypress="return searchKeyPress(event);" autofocus> -->
<!-- 						<span class="focus-input100" data-placeholder="&#xf207;"></span> -->
<!-- 					</div> -->
					<div class="wrap-input100 validate-input " data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="Username" id="txtUsername" required>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password" >
						<input class="input100" type="password" name="pass" placeholder="Password" id="txtPassword" required>
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
<!--	
					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							Remember me
						</label>
					</div>
					<div class="text-center p-t-90">
						<a class="txt1" href="#">
							Forgot Password?
						</a>
					</div>
-->
					<div class="container-login100-form-btn">
						<button class="login100-form-btn"  id="btnLogin" onclick="submit()">
							Login
						</button>
					</div>
					
<!-- 				</form> -->
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
	<script src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js" />"></script>
	<script src="<c:url value="/resources/vendor/animsition/js/animsition.min.js" />"></script>
	<script src="<c:url value="/resources/vendor/bootstrap/js/popper.js" />"></script>
	<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/vendor/select2/select2.min.js" />"></script>
	<script src="<c:url value="/resources/vendor/daterangepicker/moment.min.js" />"></script>
	<script src="<c:url value="/resources/vendor/daterangepicker/daterangepicker.js" />"></script>
	<script src="<c:url value="/resources/vendor/countdowntime/countdowntime.js" />"></script>
	<script src="<c:url value="/resources/js/constants.js" />"></script>
	
	<style>
	.divbackground{
	
	background-image:url( <c:url value="/resources/images/bg-01.png" />);
/* 	url('resources/images/bg-01.png'); */
	
	}
	
	</style>
<script type="text/javascript">
	

		 function submit(){
			 var pwd = $("#txtPassword").val();
			 var userName = $("#txtUsername").val();

if(""==userName || ""==pwd){
	alert("Username or Password is empty.");
}else {

var encodedPwd = btoa(pwd);

alert(window.loginUrl);
var jsonData =  "{ \"loginName\": \"" +userName + "\",\"password\":\""+encodedPwd +"\"}";

			 $.ajax({
                 type: "POST",
                 dataType:"json",
                 contentType: "application/json; charset=utf-8",
             //    url:window.loginUrl,
                 url: "http://localhost:8080/ReportGenerator/hmms/login",
                 data: jsonData,
                 success: function(hospitalId) {
              //  	alert(hospitalId);
               // 	if(hospitalId!=null && hospitalId!=''){
                		localStorage.setItem("userName",userName);
                   	 window.location = "dailyReportFilter.jsp?user=" +userName;
               // 	}else {
               // 		alert("Invalid username or password.");
                //	}
                	
                 },
                 error: function(jqXHR, textStatus, errorThrown) {
                	 alert(" Error in processing!");

                 }
             });
}
		 }
    
    </script>

</body>
</html>