<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>TCAT</title>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<!-- <script src="//code.jquery.com/jquery.min.js"></script> -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- Ionicons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/css/adminlte.min.css">

</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<nav class="main-header navbar navbar-expand navbar-white navbar-light">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a></li>
			<li class="nav-item d-none d-sm-inline-block">
				<a href="main" class="nav-link">Home</a>
			</li>
		</ul>
		
	
		<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
	
			<li class="nav-item"><a class="nav-link" data-widget="fullscreen" href="#" role="button"> <i
					class="fas fa-expand-arrows-alt"></i>
			</a></li>
			<li class="nav-item">
				<a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button"> <i class="fas fa-th-large"></i>
				</a>
			</li>
		</ul>
	</nav>
	
	<aside class="control-sidebar control-sidebar-dark">
		<div class="sidebar">
			<form action="#">
				<span class="brand-text font-weight-light"> <font size="5px">출퇴근 설정 </font></span>
				<div>
					<span class="brand-text font-weight-light"> <font size="3px">근무형태  </font></span><br>
					<input type="radio" name="radio" value="본사" checked="checked"> <font size="1px">본사</font>
					<input type="radio" name="radio" value="외근">  <font size="1px">외근</font>
					<input type="radio" name="radio" value="출장">  <font size="1px">출장</font>
					<div id="etc_view" style="display:none;"> <input type="text"></div>
				</div>

				
				<hr>
				
				<div align="right"> 
				
					<button class="btn btn-primary" id="buttonNoLogin" onclick="#" >출근</button>
					
					<button class="btn btn-primary" id="buttonNoLogin" onclick="#" >퇴근</button>
				</div>
			</form>	
		</div>

 	</aside>

<script>

$(document).ready(function(){
	  $("input:radio[name=radio]").click(function(){
	    if($("input[name=radio]:checked").val() == "본사"){
	    	 $('#divId').hide();
	    	 $('#etc_view').css('display','none');
	    }else if($("input[name=radio]:checked").val() != "본사"){
	    	$('#divId').show();
	    	 $('#etc_view').css('display','block');
	    }
	  });
});
</script>



	<!-- /.navbar -->
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/js/adminlte.min.js"></script>

</body>
</html>