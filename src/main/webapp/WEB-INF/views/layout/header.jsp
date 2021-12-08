<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>TCAT</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- Ionicons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/css/adminlte.min.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/js/adminlte.min.js"></script>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<nav class="main-header navbar navbar-expand navbar-white navbar-light">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a></li>
		</ul>
		
	
		<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link" data-widget="fullscreen" href="#" role="button">
				<i class="fas fa-expand-arrows-alt"></i></a>
			</li>
			<li class="nav-item"><a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button"> 
				<i class="fas fa-th-large"></i></a>
			</li>
		</ul>
	</nav>
	
	
	<aside class="control-sidebar control-sidebar-dark">
		<div class="sidebar" >
			<div class="user-panel mt-3 pb-1 mb-1 d-flex">
				<h3>출퇴근 설정</h3>
			</div>
			<form action="#">
				<input type="hidden" id="member_id" name="member_id" value="${member.member_id}">
				<div class="user-panel mt-2 pb-1 mb-2 d-flex">
					<c:if test="${timeCardChcek eq null}">
						<ul class="nav nav-pills nav-sidebar flex-column">
							<li>
								<font size="3px">근무형태 </font>
							</li>
							<li>
								<input type="radio" name="work_pattern" id="work_pattern" value="본사"><font size="1px">본사</font>
								<input type="radio" name="work_pattern" id="work_pattern" value="외근"><font size="1px">외근</font>
								<input type="radio" name="work_pattern" id="work_pattern" value="출장"><font size="1px">출장</font>
							</li>
							<li>
								<div id="etc_view" style="display:none;">  
									<font size="3px">근무지 </font><br>
									<input type="text" width="10px" id="work_place" name="work_place" placeholder="근무지를 입력해주세요." >
								</div>
							</li> 
						</ul>
					</c:if>
					<c:if test="${timeCardChcek ne null}">
						<label for="content" class="form-label"><strong>비고</strong></label>
						<textarea class="form-control h-25" rows="10" id="work_note" name="work_note"></textarea>
					</c:if>
				</div>
				<div align="right">
					<c:if test="${timeCardChcek eq null}">
				 		<input class="btn btn-primary btn-block" type="button" value="출근하기"  id="submitBtn">
					</c:if> 
				 	<c:if test="${timeCardChcek ne null}">
				 		<input class="btn btn-primary btn-block" type="button" value="퇴근하기"  id="submitBtn2">
					</c:if> 
				</div>
			</form>	
		</div>
 	</aside>

	<script>
		$(document).ready(function() {
			$("input:radio[name=work_pattern]").click(function() {
				if ($("input[name=work_pattern]:checked").val() == "본사") {
					$('#etc_view').css('display', 'none');
				} else if ($("input[name=work_pattern]:checked").val() != "본사") {
					$('#etc_view').css('display', 'block');
				}
			});
		});
		
		$(document).ready(function() {
			$('#submitBtn').click(function() {
				var param = {'member_id':$("#member_id").val(), 'work_pattern': $("#work_pattern").val(), 'work_place': $("#work_place").val()};
				$.ajax({
					url: "timeCardAttendanceOn",
					type: "POST",
					data: param,
					success: function(data) {
						if (data != 1) {
							alert('출근할 수 없습니다. 관리자에게 문의해주세요.');
						}
						else {
							alert('출근되었습니다.');
							location.href = "main";
						}
					}
				});
			})
			
			$('#submitBtn2').click(function() {
				var param = {'member_id':$("#member_id").val(), 'work_note': $("#work_note").val()};
				$.ajax({
					url: "timeCardAttendanceOff",
					type: "POST",
					data: param,
					success: function(data) {
						if (data == 1) {
							alert('퇴근되었습니다.');
							location.href = "main";
						}
						else {
							alert('에러 : 관리자에게 문의해주세요.');
						}
					}
				});
			})
		})
	
	</script>
</body>
</html>