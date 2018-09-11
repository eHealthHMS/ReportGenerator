<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Weekly Report Dashboard</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300italic,400,300' rel='stylesheet' type='text/css'>
<link href="<c:url value="/resources/css/listview.css" />" rel="stylesheet">
<!--   <link rel='stylesheet' href='listview.css'> -->
<!--   <link rel="stylesheet" href="/resources/demos/style.css"> -->
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="<c:url value="/resources/js/listview.js" />"></script>
  <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<!--   <script type="text/javascript" src="listview.js"></script> -->
<%--     <script src="<c:url value="https://code.jquery.com/ui/1.12.1/jquery-ui.js" />"></script> --%>
<%--   <script src="<c:url value="https://code.jquery.com/jquery-1.12.4.js" />"></script> --%>
  
  <style>
  
 
body {
	/*    	background-image: url(C:/ehealth/SampleProjectWorkspace/ReportGeneratorSample/WebContent/WEB-INF/images/blackbg.jpg); */
	background-image: url(< c : url value = '/resources/images/blackbg.jpg'/ >);
	font-family: 'Comic Sans MS';
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
   	/* background-image: url(< c : url value = '/resources/images/blackbg.jpg'/ >); */
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
    text-align : center;
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

.fieldPadding{
padding-top:8px;
}

	</style>
 	 <script>
 	 
 	$("#list li").click(function() {
 	    alert(this.id); // id of clicked li by directly accessing DOMElement property
 //	    alert($(this).attr('id')); // jQuery's .attr() method, same but more verbose
 //	    alert($(this).html()); // gets innerHTML of clicked li
 //	    alert($(this).text()); // gets text contents of clicked li
 	});
 	
 	$( function() {
		   /*  $("#fromDatepicker").datepicker({dateFormat:'dd/mm/yy'});
		    $("#toDatepicker").datepicker({dateFormat:'dd/mm/yy'}); */
 		$("#fromDatepicker").datepicker();
		    $("#toDatepicker").datepicker();  
		    
		  } );
 	
function isDate()
    {
        var fromDate = document.getElementById("fromDatepicker").value;
        var toDate= document.getElementById("toDatepicker").value;
        /* alert(fromDate);
        alert(toDate); */
  	   /*  var dateRegEx = null;
	    dateRegEx = new RegExp(/^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$/g);
	
	    if (dateRegEx.test(fromDate)){
	    	//alert("valid");
	    }
	    else{
	        alert("Invalid from date");
	        return false;
	    }
	    dateRegEx = new RegExp(/^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$/g);
	    if(dateRegEx.test(toDate)) {
	    //	alert("valid");
	    }
	    else{
	        alert("Invalid to date");
	        return false;
	    } */
	    var stDate = new Date(fromDate);
	    var enDate = new Date(toDate);
	    var compDate = enDate - stDate;
	    var days = (compDate / (1000*60*60*24)); 
	    /*alert("days"+days);
	    alert("stDate" + stDate );
	    alert("enDate" +enDate)
	    alert("compDate" + compDate); */
	    //var fdate=enDate-curr_Date;
	
	    if(days > 31 || days <31 )
	    	{
	    		 alert("You have not entered dates properly.Please select a week for weekly report");
	    	}
	    else
	    	{
	    	//show the list here....
	    	}
}
	</script>
	</head>
	<body>
	<div class="container-reportpage">
	<div class= "container">
	  <div class="sidenav">
		  <a href="dailyReportFilter.jsp"><strong>DAILY REPORT</strong></a>
		  <a href="weeklyReportFilter.jsp"><strong>WEEKLY REPORT</strong></a>
		  <a href="monthlyReportFilter.jsp"><strong>MONTHLY REPORT</strong></a>
	   </div>
	   
	   	<div class="main">
	   		<h1  class="content-head"><u>Monthly Report Generator</u></h1>
	   		  </br>
	   	<center>
	   	<table>
	   		 <tr></tr>
			<bold><td class="colorWhite">From Date:</td><td><input type="text" id="fromDatepicker"></td></bold>
			<tr></tr>
			<bold><td class="colorWhite">To Date:</td><td><input type="text" id="toDatepicker"></td></bold>
			</table></center>

			<center>
			<button class="login100-form-btn"  id="dailyReportSubmit" onclick="return isDate()">
							Submit
						</button>
			</center>
		</div>
		 <div><h1>NCD Reports</h1><div class="jquery-script-ads" align="center" style="margin:20px auto; text-align:center">
		 
<script type="text/javascript">

  var _gaq = _gaq || [];
  
  tgr
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<!-- <script type="text/javascript" -->
<!-- src="http://pagead2.googlesyndication.com/pagead/show_ads.js"> -->
</script></div></div class ='header'>


   <section class="list-wrap">

     <label for="search-text">Search NCD Reports</label>
     <br>
     <br>
    <input type="text" id="search-text" placeholder="ex. Form 2" class="search-box">
      <span class="list-count"></span>
      
      
  <ul id="list" >

<li>Form 1</li>
<li>Form 2</li>
<li>Form 3A</li>
<li>Form 3B</li>
<li>Form 4</li>
<li>Form 5A</li>
<li>Form 5B</li>
<li>Form 6</li>

    <span class="empty-item">no results</span>
  </ul>
     </section>
     </div>
			</div>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar" %>    

<%--  <%

    String date1 =request.getParameter("fromDatepicker");

    String date2 =request.getParameter("toDatepicker");

        SimpleDateFormat dateformat = new SimpleDateFormat ("MM/dd/yyyy"); //SDF to display output with day of week

    Date displaydate1=new Date(date1); //Turning the inputed date from string
                                       //to date format to be used for the output
    Date displaydate2=new Date(date2);

      int differenceInDays = (int) ((displaydate2.getTime() - displaydate1.getTime())/(1000*24*60*60));//common method to calculate number of days

    out.println("Between " +dateformat.format(displaydate1)+ " and " +dateformat.format(displaydate2)+ " there are " +differenceInDays+ " days");

 %> --%>

  
	</body>
	</html>