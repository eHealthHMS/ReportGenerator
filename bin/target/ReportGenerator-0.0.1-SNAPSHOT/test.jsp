<!DOCTYPE html>
<html lang="en">
<head>
	<title>Report Generator</title>
	<style type="text/css">
	.container-reportpage {
  width: 100%;  
  min-height: 100vh;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
/*   justify-content: center; */
  align-items: flex-start;
  padding: 35px;

  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
  	background-color:white;
  position: relative;
  z-index: 1;  
/*   background-image: url('images/background.png'); */
   background: #9152f8; 
   background: -webkit-linear-gradient(top, #7579ff, #b224ef); 
  background: -o-linear-gradient(top, #7579ff, #b224ef); 
   background: -moz-linear-gradient(top, #7579ff, #b224ef); 
   background: linear-gradient(top, #7579ff, #b224ef); 
}
.divStyle {
/* vertical-align: top; */
/* background-repeat: no-repeat; */
/* width: 100%; */
 background-color: white; 
width: 100%; 
height :100px;
/*  background: #9152f8;  */
/*    background: -webkit-linear-gradient(top, #7579ff, #b224ef);  */
/*    background: -o-linear-gradient(top, #7579ff, #b224ef);  */
/*    background: -moz-linear-gradient(top, #7579ff, #b224ef);  */
/*    background: linear-gradient(top, #7579ff, #b224ef);  */
 border-radius: 10px; 
  overflow: hidden; 
}
	.wrap-reportpage {
  width: 95%;
/*   height: 500px; */
/*   border-radius: 10px; */
/*   overflow: hidden; */
/*   padding: 55px 55px 37px 55px; */

  background: white;
/*   background: -webkit-linear-gradient(top, #7579ff, #b224ef); */
/*   background: -o-linear-gradient(top, #7579ff, #b224ef); */
/*   background: -moz-linear-gradient(top, #7579ff, #b224ef); */
/*   background: linear-gradient(top, #7579ff, #b224ef); */
}</style>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-reportpage" >
		<div class="divStyle" >
		<span class="login100-form-title p-b-34 p-t-27"> 
<!-- 			<img alt="logo" src="images/logo_2.png" /> -->
			Report Generator
			</span>
		</div>
<!-- 		<div class="divStyle" style="background-image: url('images/headerimage.png');width: 100%;"> -->
<!-- 			<img alt="logo" src="images/headerimage.png" /> -->
<!-- 			<input class="input100" type="text" name="username" placeholder="Username"> -->
<!-- 		</div> -->
	
<!-- 		 class="zmdi zmdi-landscape"/> -->
<!-- 		style="background-image: url('images/bg-01.jpg');"> -->
		<!--<div class="container-login100" style="background-image: url('images/eHealthLogo.png');">-->
			<div class="wrap-reportpage" >
<!-- 			<img alt="logo" src="images/logo_2.png" class="zmdi zmdi-landscape"/> -->
<!-- 				<form class="login100-form validate-form"> -->
<!-- 					<span class="login100-form-logo"> -->
<!-- 					<img alt="logo" src="images/logo_2.png" class="zmdi zmdi-landscape"/> -->
<!-- 						<i class="zmdi zmdi-landscape"></i> -->
<!-- 					</span> -->
					

<!-- 					<span class="login100-form-title p-b-34 p-t-27"> -->
<!-- 						Report Generator -->
<!-- 					</span> -->
					
				
<!-- <div class="wrap-input100 validate-input" data-validate = "Please show your health card">Please show your health card -->
<!-- 						<input class="input100" type="text" name="username" placeholder="Please show your health card.."  -->
<!-- 						 onkeypress="return searchKeyPress(event);" autofocus> -->
<!-- 						<span class="focus-input100" data-placeholder="&#xf207;"></span> -->
<!-- 					</div> -->
<!-- 					<div class="wrap-input100 validate-input" data-validate = "Enter username"> -->
<!-- 						<input class="input100" type="text" name="username" placeholder="Username"> -->
<!-- 						<span class="focus-input100" data-placeholder="&#xf207;"></span> -->
<!-- 					</div> -->

<!-- 					<div class="wrap-input100 validate-input" data-validate="Enter password"> -->
<!-- 						<input class="input100" type="password" name="pass" placeholder="Password"> -->
<!-- 						<span class="focus-input100" data-placeholder="&#xf191;"></span> -->
<!-- 					</div> -->
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
<!-- 					<div class="container-login100-form-btn"> -->
<!-- 						<button class="login100-form-btn"> -->
<!-- 							Login -->
<!-- 						</button> -->
<!-- 					</div> -->
					
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<script>
	

</script>


</body>
</html>