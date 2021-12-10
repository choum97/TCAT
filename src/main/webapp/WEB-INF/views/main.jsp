<!--author 김요한-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>TCAT Dashboard</title>

<!-- fullcalendar CDN -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />

<!--공지사항 rolling css-->
<link href='<c:url value="/resources/css/rolling.css"/>' rel='stylesheet' />

</head>

<body>
	<c:if test="${member == null}">
		<c:redirect url="title"/>
	</c:if>
	<div class="wrapper">
		<!-- 헤더 -->
		<jsp:include page="layout/header.jsp"/>
		
		<!-- 사이드 바 -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<jsp:include page="layout/sidebar.jsp"/>
		</aside>

		<div class="content-wrapper"> <!-- 파랑색배경 -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Home</h1>
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
									<h3>${commandCenterList}<sub style="font-size: 12px">명</sub></h3>
									<p>본사  </p>
								</div>
								<div class="icon">
									<i class="fas fa-users mr-2"></i>
								</div>
								<a href="#" class="small-box-footer" data-toggle="modal" data-target="#myModal1">More info <i class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-6">
							<div class="small-box bg-success">
								<div class="inner">
									<h3>${outsideCount }<sub style="font-size: 12px">명</sub></h3>
									<p>외근</p>
								</div>
								<div class="icon">
									<i class="ion ion-person"></i>
								</div>
								<a href="#" class="small-box-footer" data-toggle="modal" data-target="#myModal2">More info <i class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-6">
							<div class="small-box bg-warning">
								<div class="inner">
									<h3>${vacationCount }<sub style="font-size: 12px">명</sub></h3>
									<p>휴가</p>
								</div>
								<div class="icon">
									<i class="icon fas fa-tree"></i>
								</div>
								<a href="#" class="small-box-footer" data-toggle="modal" data-target="#myModal3">More info <i class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-6">
							<div class="small-box bg-danger">
								<div class="inner">
									<h3>${tripCount }<sub style="font-size: 12px">명</sub></h3>
									<p>출장</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
								<a href="#" class="small-box-footer" data-toggle="modal" data-target="#myModal4">More info <i class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<hr>
					
					<script src='<c:url value="/resources/js/rolling.js"/>'></script>
					<div>
						<h4>공지사항</h4>
						<div class="block">
							<ul id="ticker" style="width:50%;">
								<c:forEach items="${NoticeList}" var="NoticeVO">
									<li><a href="noticeDetailView?notice_id=${NoticeVO.notice_id }">  
										${NoticeVO.reg_date}&emsp;${NoticeVO.title }
									</a></li>
								</c:forEach>
							</ul>
							<div class="navi">
								<button class="unstyled-button"><span class="prev"> &#8593;</span></button>
								<button class="unstyled-button"><span class="next">&#8595;</span></button>
							</div>
						</div><br>
					</div>
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
				height : '700px', // calendar 높이 설정
				expandRows : true, // 화면에 맞게 높이 재설정
				// 해더에 표시할 툴바
				headerToolbar : {
					left : 'prev,next today',
					center : 'title',
					right : 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
				},
				initialView : 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
				navLinks : true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
				editable : false, // 수정 가능?
				selectable : true, // 달력 일자 드래그 설정가능
				nowIndicator : true, // 현재 시간 마크
				dayMaxEvents : true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
				locale : 'ko', // 한국어 설정
				events: [
					<c:forEach items="${ScheduleList}" var="ScheduleVO">
						{
							title : '${ScheduleVO.schedule_title}',
							start : '${ScheduleVO.schedule_start_day}',
							end : '${ScheduleVO.schedule_end_day}',
							color : '${ScheduleVO.schedule_color}'
						},
					</c:forEach>
				   {
				     title  : 'default',
				   }
				 ],
				end : 'today prev,next',
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