<!--author 손호영 -->


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.time.LocalDateTime"%>
<%
   //현재시간 구해서 String으로 formating
   LocalDateTime nowTime = LocalDateTime.now();
   
   DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
   DateTimeFormatter dateTimeFormatter2 = DateTimeFormatter.ofPattern("yyyy-MM");
   String now = nowTime.format(dateTimeFormatter);
   String beginMonth = nowTime.format(dateTimeFormatter2);
%>
<!DOCTYPE html>
<html>
<!--author 손호영-->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>휴가 상세보기</title>


<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="./resources/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="./resources/dist/css/adminlte.min.css">



</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="layout/header.jsp" />

	<!-- 사이드 바 -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4">
		<jsp:include page="layout/sidebar.jsp" />
	</aside>


	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>손호영</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">잔여휴과</a></li>
							<li class="breadcrumb-item active">1</li>
						</ol>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
		</section>

		<section class="content">

			<!-- Default box -->
			<div class="card">
				<div class="card-body row">
					<div
						class="col-5 text-center d-flex align-items-center justify-content-center">
						<div class="">
							<h2>
								(주)<strong>포커스리더</strong>
							</h2>
							<br> <br>
							<p class="lead mb-5">신청한 휴가의 상세적인 내용입니다.</p>
						</div>
					</div>
					<div class="col-7">		
						<div class="form-group">
							<label>분류</label>
							<input type="text" id="inputSubject" class="form-control" value="${vacation_view.vacation_kind}" readonly />		 
						</div>


					 <div class="form-group">
               			 <label>시작일</label>
						<input type="date" class="form-control"  id="start_date" name="start_date" value="${vacation_view.vacation_start_day}" readonly>
					</div>	
					
									
					 <div class="form-group">	
						<label>종료일</label>
						<input type="date" class="form-control"  id="end_date" name="end_date" value="${vacation_view.vacation_end_day}" readonly>
					</div>
					
					
						<div class="form-group">
							<label for="inputMessage">내용</label>
							<textarea id="inputMessage" class="form-control" rows="4" readonly>${vacation_view.vacation_reason}</textarea>
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-danger" value="뒤로가기" onClick="location.href='vacation'">
							<input type="submit" class="btn btn-success" value="수정하기" style="float:right;">
						</div>
						
						
						
						
					</div>
				</div>
			</div>
		</section>
	</div>
	
	
	
	






<script src="./resources/plugins/jquery/jquery.min.js"></script>
<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="./resources/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<script src="./resources/plugins/moment/moment.min.js"></script>
<script src="./resources/plugins/inputmask/jquery.inputmask.min.js"></script>
<script src="./resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script src="./resources/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>

<script>
  $(function () {
 
    //Date picker
    $('#reservationdate').datetimepicker({
        format: 'L'
    });

  
  })
 
 

 

 
</script>

	<jsp:include page="layout/footer.jsp"/>
</body>


</html>