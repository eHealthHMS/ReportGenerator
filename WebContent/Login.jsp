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
	 <link href="<c:url value="/resources/css/loadingImageStyle.css" />" rel="stylesheet">
	 
	 

</head>
<body  >
	
	<div class="limiter">
	<div class="container-login100" style="background-image:url(<c:url value='/resources/images/bg-01.jpg' />)">
			<div class="wrap-login100">
					<span class="login100-form-logo">
			<img alt="logo" src="<c:url value="/resources/images/logo_ehealth.png" />" class="zmdi zmdi-landscape"/>
					</span>
					<span class="login100-form-title p-b-34 p-t-27">
						Report Generator
					</span>
					<div class="wrap-input100 validate-input " data-validate = "Enter username">
						<input class="input100" type="text" autocomplete="off" name="username" placeholder="Username" id="txtUsername" required>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password" >
						<input class="input100" type="password" autocomplete="off" name="pass" placeholder="Password" id="txtPassword" required>
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn"  id="btnLogin" onclick="submit()">
							Login
						</button>
					</div>

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
	<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery-loader.js" />"></script>
<!-- 	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<!-- <script src="jquery-loader.js"></script> -->
	
	<style>
	.divbackground{
	
	background-image:url( <c:url value="/resources/images/bg-01.png" />);
/* 	url('resources/images/bg-01.png'); */
	
	}
	
	
	</style>
<script type="text/javascript">


		 function submit(){
			 
			 $data = {
		                autoCheck: 32,
		                size:25,
		                bgColor: '#FFF', 
		                bgOpacity: 0.5, 
		                fontColor: false,  
		              //  title: 'Authenticating user.Please wait..', 
		                isOnly: true,
		                imgUrl: "/ReportGenerator/resources/images/loading32x32.gif"
		            };
			 
			 $.loader.open($data);
			 var pwd = $("#txtPassword").val();
			 var userName = $("#txtUsername").val();

if(""==userName || ""==pwd){
	 $.loader.close(true);
	alert("Username or Password is empty.");
	
}else {


//alert(window.loginUrl);
var jsonData =  "{ \"loginName\": \"" +userName + "\",\"password\":\""+pwd +"\"}";

			 $.ajax({
                 type: "POST",
                 dataType:"json",
                 contentType: "application/json; charset=utf-8",
                 url:window.loginUrl,
             //    url: "http://localhost:8080/ReportGenerator/hmms/login",
                 data: jsonData,
                 success: function(hospitalId) {
                	
                	if(hospitalId!=null && hospitalId!=''){
                		localStorage.setItem("userName",userName);
                   	 window.location = "dailyReportFilter.jsp?user=" +userName;
                	}else {
                		alert("Invalid username or password.");
                	}
                	 $.loader.close(true);
                	
                 },
                 error: function(jqXHR, textStatus, errorThrown) {
                	 $.loader.close(true);
                	 alert("Server or network error has occured. Please try after some time.");

                 }
             });
}
		 }
    
    </script>

</body>
</html>