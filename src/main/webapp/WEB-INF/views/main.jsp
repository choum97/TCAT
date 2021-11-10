<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>TCAT Dashboard</title>

<!-- fullcalendar CDN -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />

</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- 헤더 -->
		<jsp:include page="layout/header.jsp"/>
		
		<!-- 사이드 바 -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<jsp:include page="layout/sidebar.jsp"/>
		</aside>

		<div class="content-wrapper">
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Home</h1>
						</div>
						<div class="col-sm-6">
						</div>
					</div>
				</div>
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-3 col-6">
							<div class="small-box bg-info">
								<div class="inner">
									<h3>150<sub style="font-size: 12px">명</sub></h3>

									<p>본사</p>
								</div>
								<div class="icon">
									<i class="fas fa-users mr-2"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-6">
							<div class="small-box bg-success">
								<div class="inner">
									<h3>53<sub style="font-size: 12px">명</sub></h3>
									
									<p>외근</p>
								</div>
								<div class="icon">
									<i class="ion ion-person"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-6">
							<div class="small-box bg-warning">
								<div class="inner">
									<h3>44<sub style="font-size: 12px">명</sub></h3>

									<p>휴가</p>
								</div>
								<div class="icon">
									<i class="icon fas fa-tree"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-6">
							<div class="small-box bg-danger">
								<div class="inner">
									<h3>65<sub style="font-size: 12px">명</sub></h3>
									<p>출장</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- Main row -->
					<hr>
					<div>
						<h3>일정</h3>
	 					<div id='calendar'></div>
					</div>
					<!-- /.row (main row) -->
				</div>
			</section>
		</div>
		
		<jsp:include page="layout/footer.jsp"/>
	</div>
	<!-- ./wrapper -->


	<script>
	//캘린더
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
	       	height: '700px', // calendar 높이 설정
	       	expandRows: true, // 화면에 맞게 높이 재설정
	       	// 해더에 표시할 툴바
	       	headerToolbar: {
	       	left: 'prev,next today',
	       	center: 'title',
	       	right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
	       	},
	       	initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
	       	navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
	       	editable: true, // 수정 가능?
	       	selectable: true, // 달력 일자 드래그 설정가능
	       	nowIndicator: true, // 현재 시간 마크
	       	dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
	       	locale: 'ko', // 한국어 설정
	       	
        	end: 'today prev,next',
        });
        calendar.render();
    });
	
  	</script>
	
	<!-- fullcalendar CDN -->
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
	<!-- fullcalendar 언어 CDN -->
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>

</body>
</html>