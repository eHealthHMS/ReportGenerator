<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- <meta charset="utf-8"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daily Report Dashboard</title>
 <link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link href="<c:url value="/resources/css/treemenu.css" />" rel="stylesheet">
<!--   <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
<script src="<c:url value="/resources/js/treemenu.js" />"></script>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script> -->
<!-- <script>window.jQuery || document.write(decodeURIComponent('%3Cscript src="js/jquery.min.js"%3E%3C/script%3E'))</script> -->
    <link rel="stylesheet" type="text/css" href="https://cdn3.devexpress.com/jslib/18.1.5/css/dx.spa.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn3.devexpress.com/jslib/18.1.5/css/dx.common.css" />
    <link rel="dx-theme" data-theme="generic.light" href="https://cdn3.devexpress.com/jslib/18.1.5/css/dx.light.css" />
<!--     <script src="https://cdn3.devexpress.com/jslib/18.1.5/js/dx.all.js"></script> -->
     <script src="<c:url value="/resources/js/dx.all.js" />"></script>
<!--     <script src="data.js"></script> -->
<!--     <link rel="stylesheet" type ="text/css" href ="styles.css" /> -->
<!--     <script src="index.js"></script> -->
<style>

body {
	/*    	background-image: url(C:/ehealth/SampleProjectWorkspace/ReportGeneratorSample/WebContent/WEB-INF/images/blackbg.jpg); */
	background-image: url(< c : url value = '/resources/images/blackbg.jpg'/ >);
/* 	font-family: 'Comic Sans MS'; */
font-family:'Arial Black';
}

.content-head{
	margin: 1em 0 0.5em 0;
	color: #343434;
	font-weight: bold;
	/* font-family:'Arial Black';   */ 
	/* background-image: url(< c : url value = '/resources/images/blackbg.jpg'/ >); */
	font-size: 36px;
	line-height: 42px;
	text-transform: uppercase;
	text-shadow: 0 2px white, 0 3px #777;
}
.container {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
   	background-image: url(< c : url value = '/resources/images/blackbg.jpg'/ >);
}
.container-reportpage {
	/* width: 100%; */
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
	background-color: white;
	position: relative;
	z-index: 1;
	background: #9152f8;
	background: -webkit-linear-gradient(top, #7579ff, #b224ef);
	background: -o-linear-gradient(top, #7579ff, #b224ef);
	background: -moz-linear-gradient(top, #7579ff, #b224ef);
	background: linear-gradient(top, #7579ff, #b224ef);
}

.colorWhite {
	color: black;
	text-align: center;
	font-size: 20px;
	font-weight: bold;
}

.sidenav {
    height: 100%;
    width: 260px;
    position: fixed;
    font-weight: bold;
/*     text-align : center; */
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    padding-top: 20px;
    font-family: Comic Sans MS;
}

.sidenav a {
    padding: 16px 28px 7px 16px;
    text-decoration: none;
    font-size: 20px;
    color: white;
    display: block;
}

.sidenav a:hover {
     background-color: #8b29b7; /* Dark grey background on mouse-over */	
}

.main {
    margin-left: 160px; /* Same as the width of the sidenav */
    font-size: 28px; /* Increased text to enable scrolling */
    padding: 0px 10px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
    .sidenav a {font-size: 18px;}
}
}

/* Button styling */
.container-login100-form-btn {
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

.login100-form-btn {
  font-family: Poppins-Medium;
  font-size: 16px;
  color: #555555;
  line-height: 1.2;

  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 20px;
  min-width: 90px;
  height: 28px;
  border-radius: 25px;

  background: #9152f8;
  background: -webkit-linear-gradient(bottom, #cac5cc, #171616);
  background: -o-linear-gradient(bottom, #7579ff, #b224ef);
  background: -moz-linear-gradient(bottom, #7579ff, #b224ef);
  background: linear-gradient(bottom, #7579ff, #b224ef);
  position: relative;
  z-index: 1;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.login100-form-btn::before {
  content: "";
  display: block;
  position: absolute;
  z-index: -1;
  width: 100%;
  height: 100%;
  border-radius: 25px;
  background-color: #fff;
  top: 0;
  left: 0;
  opacity: 1;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.login100-form-btn:hover {
  color: #fff;
}

.login100-form-btn:hover:before {
  opacity: 0;
}
/* testing css 

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #f1f1f1;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
}*/
</style>
<%

%>
<script>

 $(document).ready(function(){
// alert(request.getParameter("hospitalId"));
//alert(localStorage.getItem("userName"));
var userName= localStorage.getItem("userName");
if(userName==""){
	 window.location = "Login.jsp";
}
// //request.getParameter("hospitalId");
 });
// .dx-treeview .dx-treeview-item .dx-treeview-item-content span
 
 
 $(".dx-treeview .dx-treeview-item .dx-treeview-item-content span").click(function(){
	 alert("test");
	  // Holds the product ID of the clicked element
	//  var productId = $(this).attr('class').replace('addproduct ', '');

	  //addToCart(productId);
	});
 
	$(function() {
		// $( "#datepicker" ).datepicker();
		$("#datepicker").datepicker().datepicker("setDate", new Date());
	});
	
	function pad(num) {
	    var s = num+"";
	    while (s.length < 2) s = "0" + s;
	    return s;
	}
	 
	 function getReport(){
		 
		 var dateObject = new Date($('#datepicker').datepicker({ dateFormat: 'dd-mm-yy' }).val());
		 var formattedDate=dateObject.getFullYear() + '-' + pad(dateObject.getMonth() + 1) + '-' + pad(dateObject.getDate());

		 var userName= localStorage.getItem("userName");
		  $.ajax({
	            type: 'GET',
	            contentType: "application/json; charset=utf-8",
	            dataType: 'text',
	         //   url: "http://localhost:8080/ReportGenerator/dailyReport/precheck/" + userName, 
	            url: "http://localhost:8080/ReportGenerator/dailyReport/precheck?username=" + userName + "&date=" + formattedDate,
	            success: function (data) { 
	            	//alert('Successfully get method executed.' + data) ;
	            //var wnd = window.open("about:blank", "", "_blank");
	            	var wnd = window.open('about:blank','_blank');
	            wnd.document.write(data);	
	            
	            },
	            error: function (a, jqXHR, exception) {
	            	// alert(jqXHR);
                	// alert(exception);
	            	 alert('failed.')
	            	
	            }
	        });
	 }
	 
	 
	
</script>
</head>
<body>
	<div class="container-reportpage">
	<div class= "container">
		<div class="sidenav">
<!-- 				<a href="dailyReportFilter.jsp"><strong>DAILY REPORT</strong></a> <a -->
<!-- 					href="weeklyReportFilter.jsp"><strong>WEEKLY REPORT</strong></a> <a -->
<!-- 					href="monthlyReportFilter.jsp"><strong>MONTHLY REPORT</strong></a> -->

			
			<div class="dx-viewport demo-container">
        <div id="treeview"></div>
<!--         <div class="options"> -->
<!--             <div class="caption">Options</div> -->
<!--             <div class="option"> -->
<!--                 <span>Search mode</span> -->
<!--                 <div id="searchMode"></div> -->
<!--             </div> -->
<!--         </div> -->
</div> 
    </div>
			<div class="reportDiv" hidden>
				<h1 class="content-head">
					<u id="heading">Report Generator</u>
				</h1>
				</br>
				
				<p class="colorWhite">
					Select the Date: <input type="text" id="datepicker">
				</p>
				<center>
					<button class="login100-form-btn"  id="dailyReportSubmit" onclick="getReport()">
							Submit
						</button>
				</center>
				</div>
				<div class="stepsDiv">
				<h1 class="content-head">
					<u id="heading">Steps to generate report</u>
				</h1>
				<p class="colorWhite">
					Select the report from left side
				</p>
				<p class="colorWhite">
					Provide required inputs
				</h1>
				<p class="colorWhite">
					Click submit button
				</p>
			</div>
		</div>
	</div>
</body>
</html>