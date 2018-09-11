
<!DOCTYPE html>
<html lang="en-us">
<head>
<title>Aster MIMS Online Appointment</title>
<img alt="logo" src="images/logo_2.png" class="zmdi zmdi-landscape"/> 
<!--  <link rel="icon" type="image/ico" href="http://ipixdemo.com/online-appointment/app/webroot/favicon.ico" > -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Latest compiled and minified CSS -->

	<link rel="stylesheet" type="text/css" href="/online-appointment/css/style.css" />
	<link rel="stylesheet" type="text/css" href="/online-appointment/css/cal.css" />
	<link rel="stylesheet" type="text/css" href="/online-appointment/css/bootstrap-3.3.7/dist/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/online-appointment/css/bootstrap-3.3.7/dist/css/bootstrap-theme.min.css" />
	<link rel="stylesheet" type="text/css" href="/online-appointment/css/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css" />
	<link rel="stylesheet" type="text/css" href="/online-appointment/css/select2.min.css" />
	<link rel="stylesheet" type="text/css" href="/online-appointment/css/croppic.css" />
<link href="https://fonts.googleapis.com/css?family=Titillium+Web:300,400,600,900" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="https://opensource.keycdn.com/fontawesome/4.7.0/font-awesome.min.css ">
<!-- Optional theme -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="../css/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.min.js"></script>

	<script type="text/javascript" src="/online-appointment/js/cal.js"></script>
	<script type="text/javascript" src="/online-appointment/js/select2.full.min.js"></script>
	<script type="text/javascript" src="/online-appointment/js/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/online-appointment/js/jquery.blockUI.js"></script>
	<script type="text/javascript" src="/online-appointment/js/jquery_cookie.js"></script>
<style type "text/css">
<!--
/* @group Blink */
.blink {
	-webkit-animation: blink .75s linear infinite;
	-moz-animation: blink .75s linear infinite;
	-ms-animation: blink .75s linear infinite;
	-o-animation: blink .75s linear infinite;
	 animation: blink .75s linear infinite;
}
@-webkit-keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
@-moz-keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
@-ms-keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
@-o-keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
@keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
/* @end */
-->
</style>
<!--------------------reena------------------>
</head>
<body>
<noscript>
  <meta http-equiv="refresh" content="0;url=https://astermims.com/online-appointment/home/noscript">
</noscript>

<div class="modal" id="otpmodal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" style="border-radius: 0px!important">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Enter the OTP</h4>
        </div>
		<form  id="frm_verify_otp">
        <div class="modal-body">
          <input type="text" id="input_otp" name="" placeholder="Check your device to get your OTP" class="form-control" autocomplete="off">
        </div>
         <div class="modal-footer">
        	<button type="submit" class="btn" style="border-radius: 0px!important;background-color: #169eda;color: white">Verify</button>
                <button type="button" class="btn cancel" onclick="hidemodal()" data-dismiss="modal" style="border-radius: 0px!important;background-color: #1c4489;color: white">Cancel</button>
        </div>
		</form>
      </div>
      
    </div>
  </div>
<div class="container-fluid tophead">
<div class="container">
	<h1 style="padding-top:0px;margin-top:0px">
        <a href="/online-appointment/"><img src="/online-appointment/img/logo.png" style="" alt="" /></a>    </h1>
	<p class="total-hits">
		Total Hits	:	180921	</p>
	<p class='logouttc'>
			<a href="https://astermims.com/online-appointment/manage_bookings">Login to Manage Your Bookings</a>
	
				</p>
</div>
</div>
<div class="container-fluid firstbody">
 <!-- <div class="col-md-12 col-xs-12 col-sm-12">
	<!--<h1 style="color:red;font-weight: 600;text-align:center" class="blink">Trial Version</h1> 
	<h1 style="color:red;font-weight: 600;text-align:center" class="blink">Trial Version only</h1>
	<p style="color:red;font-size: 23px;text-align:center" class="blink">Please don't make appointment through this</p>
  </div> -->
  <div class="container">
	<h3 class="paddzero">Online Appointment</h3>
  <div class="bodyicontop">
   <div class="row icorow">
    <div class="col-md-3 col-sm-3 col-xs-3 bodyicon">

      <div class="col-md-2 numimg">
        <img src="/online-appointment/img/dd-01.png" alt="" />      </div>
      <div class="col-md-10 iconinc">
        <img src="/online-appointment/img/find%20doctor%20icon-01.png" class="img-responsive" alt="" />        <p>Find Doctor</p>
      </div>
      <div class="dot">
      </div>
    </div>
    <div class="col-md-3 col-sm-3 col-xs-3 bodyicon">

      <div class="col-md-2 numimg">
        <img src="/online-appointment/img/2-01.png" alt="" />        <!--<img src="images/2-01.png">-->
      </div>
      <div class="col-md-10 iconinc">
        <img src="/online-appointment/img/time_slot_icon-01.png" class="img-responsive" alt="" />        <!--				<img src="images/time_slot_icon-01.png" class="img-responsive">-->
        <p>Time Slot</p>
      </div>
      <div class="dot">
      </div>
    </div>
    <div class="col-md-3 col-sm-3 col-xs-3 bodyicon">

      <div class="col-md-2 numimg">
        <img src="/online-appointment/img/3-01.png" alt="" />        <!--<img src="images/3-01.png">-->
      </div>
      <div class="col-md-10 iconinc">
        <img src="/online-appointment/img/Patient_Details_icon-01.png" class="img-responsive" alt="" />        <!--<img src="images/Patient_Details_icon-01.png" class="img-responsive">-->
        <p>Patient Details</p>
      </div>
      <div class="dot">
      </div>
    </div>
    <div class="col-md-3 col-sm-3 col-xs-3 bodyicon">

      <div class="col-md-2 numimg">
        <img src="/online-appointment/img/4-01.png" alt="" />        <!--<img src="images/4-01.png">-->
      </div>
      <div class="col-md-10 iconinc">
        <img src="/online-appointment/img/pay_icon-01.png" class="img-responsive" alt="" />        <!--<img src="images/pay_icon-01.png" class="img-responsive">-->
        <p>Confirm & Pay</p>
      </div>
    </div>
  </div>

  <div class="row rowpenelbody">
    <div class="panel panel-default pan" style="border: 0px!important">
     <div class="panel-heading panhead" style="background: #1fa0d9!important;border-bottom: 0px;border-top-left-radius: 0px; border-top-right-radius: 0px;border-radius:0px;"><p>Check your preferred doctor's availability to fix the appointment</p></div>
     <div class="panel-body panbody">

		<div class="col-md-12 col-sm-12 col-xs-12" style="text-align:center">
					</div>

      <!--  Salman Coded-->

<!-- ====================== -->



        <form id="form_index" onsubmit="return validateform()" class="form-horizontal" action="https://astermims.com/online-appointment/home/find_doctors" method="post" >
                        <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">

                    <div class="col-md-6 col-sm-6 col-xs-6 fullwidth">
                        <label>Select Hospital</label>
                        <select name="data[Patient][Hospital_ID]" class="form-control" style="border-radius:0px" onchange="populatedoctoranddept($(this))" id="PatientHospitalID">
<option value="">Select Hospital</option>
<option value="1" selected="selected">Aster MIMS Kozhikode</option>
<option value="2">Aster MIMS Kottakkal</option>
</select><!--    				<select class="form-control" style="border-radius:0px">
  					<option>Aster MIMS Calicut</option>
  					
         </select>-->
       </div>

       <div class="col-md-6 col-sm-6 col-xs-6 fullwidth">
        <label>Select Department</label>
        <select name="data[Patient][Aster_Dept_id]" onchange="getdeptdoctors()" class="form-control" style="border-radius:0px" id="PatientAsterDeptId">
<option value="">Select Department</option>
</select><!--    				<select class="form-control" style="border-radius:0px">
  					<option>Select Department</option>
  					
         </select>-->
       </div>
     </div>
   </div>
   <div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
      <div class="col-md-6 col-sm-6 col-xs-6 fullwidth">
        <label>Search or Select Doctor</label>
        <select name="data[Patient][Aster_Dr_id]" class="form-control" style="border-radius:0px" onchange="submitfrm($(this))" id="PatientAsterDrId">
<option value="">Select Doctor</option>
</select><!--    				<select class="form-control" style="border-radius:0px">
  					<option></option>
         </select>-->
       </div>

       <div class="col-md-6 col-sm-6 col-xs-6 fullwidth">

        <div >
          <label>Select Month for Appointment</label>
          <div class='input-group date' id='datetimepicker1'>
            <input name="data[Patient][AppoinmentDate]" class="form-control" style="border-radius:0px" type="text" id="PatientAppoinmentDate"/>            <!--<input type='text'  class="form-control" style="border-radius:0px">-->
            <span class="input-group-addon">
              <span class="glyphicon glyphicon-calendar"></span>
            </span>
          </div>
        </div>
      </div>
    </div>

  </div>
  <div class="row" style="padding-top: 30px;">
    <div class="col-md-12 col-sm-12 col-xs-12" style="text-align: center;">
      <button type="submit" class="btn gobutton" style="border-radius:0px">Proceed to check availability</button>
    </div>
  </div>
</form>

<div class="row footcon">

  <p>Attn:  Appointments through online is against payment only</p>
    <p ><a href="https://astermims.com/online-appointment/home/terms_condition">Terms and Conditions</a> | <a href="https://astermims.com/online-appointment/home/privacy_policy">Privacy Policy</a></p>
  
  

</div>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
   $(document).ready(function(){
	$("#PatientHospitalID").trigger("change");
   });
  $(function () {	
   $('#PatientAppoinmentDate').datepicker({
    changeMonth: true,
    changeYear: true,
    showButtonPanel: true,
    dateFormat : "M-yy",
    minDate : "+2D",
	maxDate : "+2M",
    onClose: function(dateText, inst) { 
      $(this).datepicker('setDate', new Date(inst.selectedYear, inst.selectedMonth, 1));
    }
  });
   $(".input-group-addon").click(function(){
    $("#PatientAppoinmentDate").trigger("focus");
  })				
                /*$('#PatientAppoinmentDate').datepicker({
                    dateFormat : "yy-mm-dd",
                    minDate : "+2D"
                });
                $(".input-group-addon").click(function(){
                    $("#PatientAppoinmentDate").trigger("focus");
                  })*/
                });
              </script>
              <script type="text/javascript">
                function validateform(){
                 var valid=true;
                 $(".error").remove();
                 if(($("#PatientHospitalID").val() == '') ||($("#PatientHospitalID").val() == 'null')){
                  $("#PatientHospitalID").parent('div').append('<span class="error" style="color:red;display:block;width:100%">Please choose a hospital</span>');
                  valid = false;
                }

                var department	=	$("#PatientAsterDeptId").val();
                var doctor	=	$("#PatientAsterDrId").val();
                if(((department== '') ||(department== 'null'))&&((doctor=="") ||(doctor=='null'))){
                 $("#PatientAsterDrId").parent('div').append('<span class="error" style="color:red;display:block;width:100%">Please choose a department or doctor</span>');
                 valid = false;
               }
               if($("#PatientAppoinmentDate").val() == ''){
                 $("#PatientAppoinmentDate").parent('div').parent('div').append('<span class="error" style="color:red;display:block;width:100%">Please choose a date</span>');
                 valid = false;
               }
               return valid;
             } 
             function populatedoctoranddept(elem){
              var hospital = $(elem).val();
              if(hospital != ''){
                getdoctors(hospital,'');
                getdepartments(hospital);
              }else{
                $("#PatientAsterDrId").empty();
                $("#PatientAsterDrId").html("<option value=''>Select Doctor</option>");
                $("#PatientAsterDeptId").empty();
                $("#PatientAsterDeptId").html("<option value=''>Select Department</option>");
              }
            }
            function getdeptdoctors(){
              var hospital    =   $("#PatientHospitalID").val();
              var department  =   $("#PatientAsterDeptId").val();
              getdoctors(hospital,department);
            }
            function getdoctors(hospital,department){
              $.blockUI({ message: ' Please wait' ,css: { 
                border: 'none', 
                padding: '15px', 
                backgroundColor: '#000', 
                '-webkit-border-radius': '10px', 
                '-moz-border-radius': '10px', 
                opacity: .5, 
                color: '#fff' 
              } });
              $.ajax({
                url : 'https://astermims.com/online-appointment/getdoctors/',
                type : 'post',
                data: {
                  hospital_id : hospital,
                  department_id : department
                },
                dataType: 'json',
              }).done(function(data){
            //console.log(data);
            if(data.status == 1){
              $("#PatientAsterDrId").empty();
              $("#PatientAsterDrId").html("<option value=''>Select Doctor</option>");
              $.each(data.options,function(key,val){
                $("#PatientAsterDrId").append("<option value='"+val+"'>"+key+"</option>");
              });
            }else{
              $("#PatientAsterDrId").empty();
              $("#PatientAsterDrId").html("<option value=''>Select Doctor</option>");
            }
            $.unblockUI();
          })
            }
            function getdepartments(hospital){
              $.ajax({
                url : 'https://astermims.com/online-appointment/getdepartments/',
                type : 'post',
                data: {
                  hospital_id : hospital
                },
                dataType: 'json'
              }).done(function(data){
            //console.log(data);
            if(data.status == 1){
              $("#PatientAsterDeptId").empty();
              $("#PatientAsterDeptId").html("<option value=''>Select Department</option>");
              var values = [];
              $.each(data.options,function(key,val){
//                    values[key] = val;
$("#PatientAsterDeptId").append("<option value='"+val+"'>"+key+"</option>");
});
//                values.sort();
//                $.each(values, function(index, value) {
//    if(value != undefined) {
//        $("#PatientAsterDeptId").append("<option value='"+index+"'>"+value+"</option>");
//    }
//});

}else{
  $("#PatientAsterDeptId").empty();
  $("#PatientAsterDeptId").html("<option value=''>Select Department</option>");
}
})
            }

//    $( "#form_index" ).submit(function( event ) {
//  alert( "Handler for .submit() called." );
//  event.preventDefault();
//  var hospital_id=$("#PatientHospitalID").val();
//  var dpt_id=$("#PatientAsterDeptId").val();
//  var dr_id=$("#PatientAsterDrId").val();
//  var selected_date=$("#PatientAppoinmentDate").val();
// // alert(dr_id + "  "+selected_date);
//    $.ajax({
//            url : 'https://astermims.com/online-appointment/home/list_doctors',
//            type : 'post',
//            data: {
//                hospital_id : hospital_id,
//                dpt_id:dpt_id,
//                dr_id:dr_id,
//                selected_date:selected_date        
//            },
//            dataType: 'json'
//        }).done(function(data){
//            //console.log(data);
//             $("#myModal").find("div.modal-content").html(data);
//        })
//  
//  //action="home/find_doctor_submit"
//});

</script>
<script>
  $('#PatientAppoinmentDate').bind("cut copy paste",function(e) {
    e.preventDefault();
  });

</script> 
<script type="text/javascript">
 $( function() {
  $( "#datepicker" ).datepicker();
} );
</script>
<style>
  .ui-datepicker-calendar {
    display: none;
  }
</style>
<script>
	function submitfrm(elem){
		if($(elem).val() != ''){
			$("#form_index").submit();
		}
	}
  $(document).ready(function() {
    $("#PatientAsterDrId").select2({
      placeholder: "Select Doctor",
      allowClear: true
    });
    if($("#PatientAsterDeptId  option").length == 0){
     $("#PatientAsterDeptId").val('');
     $("#PatientAsterDrId").val('');
     $("#PatientHospitalID").val('');
   }


   $('#PatientAppoinmentDate').attr('readonly', 'true'); 
   $('#PatientAppoinmentDate').css('background-color' , '#ffffff');
   $("#PatientAppoinmentDate").datepicker().datepicker("setDate", new Date());





 });

//-----------------------------------





//------------------------------------








</script>
</div>
 <div class="container">
	<!--<p style="text-align:center;font-size:16px;color:red;">Booking done online is subject to change depending upon doctors availability and any emergencies in the process</p>-->
    <marquee direction="left" style="font-size:16px;color:red;">Booking done online is subject to change depending upon doctors availability and any emergencies in the process</marquee>
 </div>
  <script type="text/javascript">
	 function hidemodal(){
                $("#otpmodal").hide();
            }
	
  </script>
<script type="text/javascript" src="https://livserv.in/bnaindia/livservtemp/index.jsp?did=15374&pid=1"></script>
</body>
</html>
