<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.time.LocalDateTime"%>
<%
   //현재시간 구해서 String으로 formating
   LocalDateTime nowTime = LocalDateTime.now();
   
   DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
   String now = nowTime.format(dateTimeFormatter);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCAT Dashboard</title>
<!-- fullcalendar CDN -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
<style>
/* The Modal (background) */
.searchModal {
display: none; /* Hidden by default */
position: fixed; /* Stay in place */
z-index: 10; /* Sit on top */
left: 0;
top: 0;
width: 100%; /* Full width */
height: 100%; /* Full height */
overflow: auto; /* Enable scroll if needed */
background-color: rgb(0,0,0); /* Fallback color */
background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
/* Modal Content/Box */
.search-modal-content {
background-color: #fefefe;
margin: 15% auto; /* 15% from the top and centered */
padding: 20px;
border: 1px solid #888;
width: 50%; /* Could be more or less, depending on screen size */
}
</style>

</head>
<body>
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
							<h1 class="m-0">일정관리</h1>
						</div>
					</div>
				</div>
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div>
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
					right : 'myCustomButton dayGridMonth,timeGridWeek,timeGridDay,listWeek'
				},
				customButtons: {
				    myCustomButton: {
				      text: '일정추가',
				      click: function() {
		    			  $("#modal").show();
				      }
				    }
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
							end : '${ScheduleVO.schedule_end_day}'
						},
					</c:forEach>
				   {
				     title  : 'default',
				   }
				],
			  	eventClick: function(info) {
					alert('Event: ' + info.event.title);
				},
				dayClick: function(info) {
					alert('Event:as ');
				}
			});
			calendar.render();
		});
		
		  function closeModal() {
    		  $('.searchModal').hide();
    		  };
		
	</script>
	
	<div id="modal" class="searchModal">
		<div class="search-modal-content">
			<form>		
				<div class="page-header">
					<h3>일정추가</h3><hr>
				</div>
				<div class="form-group row">
					<div class="col-xs-7 col-md-7">
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text"><b>시작일</b></span>
								
							</div>
							<input type="date" class="form-control" value="<%=now%>" id="start_date" name="start_date" min="<%=now %>">
						</div>
					</div>
					<div class="col-xs-5 col-md-5">
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text"><b>시간</b></span>
							</div>
							<input type="time">
						</div>
					</div>
					<div class="col-xs-7 col-md-7">
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text"><b>종료일</b></span>
							</div>
							<input type="date" class="form-control" value="<%=now %>" id="end_date" name="end_date" min="<%=now %>">
						</div>
					</div>
					<div class="col-xs-5 col-md-5">
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text"><b>시간</b></span>
							</div>
							<input type="time">
						</div>
					</div>
					<div class="col-xs-6 col-md-6">
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text"><b>제목</b></span>
							</div>
							<input type="text" value="" class="form-control" >
						</div>
					</div>
					<div class="col-xs-6 col-md-6">
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text"><b>공유여부</b></span>
								
							</div>
							<input type="text" value="" class="form-control" >
						</div>
					</div>
					<div class="container">
						<label for="content" class="form-label"><strong>내용</strong></label>
						<textarea class="form-control h-25" rows="10" id="b_content" name="b_content"></textarea>
					</div>
				</div>
				<!-- 이전, 수정 버튼 -->
				<div align="right">
					<hr>
					<button type="button" class="btn btn-primary" onclick="#">등록</button>
					<button type="button" class="btn btn-primary" onclick="closeModal();">취소</button>
		        </div>
			</form>
		</div>
	</div>
	<!-- fullcalendar CDN -->
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
	<!-- fullcalendar 언어 CDN -->
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
</body>
</html>