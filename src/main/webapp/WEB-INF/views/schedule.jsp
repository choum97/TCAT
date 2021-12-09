<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCAT Dashboard</title>
<!-- fullcalendar CDN -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
<!--일정 모달 css-->
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
					//right : 'myCustomButton dayGridMonth,timeGridWeek,timeGridDay,listWeek'
					right : 'myCustomButton dayGridMonth,listWeek'
				},
				customButtons: {
				    myCustomButton: {
				      text: '일정추가',
				      click: function(info) {
				    	  $("#myModal5").modal('show');
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
							id :'${ScheduleVO.schedule_id}',
							//memberId : '${ScheduleVO.member_id}',
							title : '${ScheduleVO.schedule_title}',
							//content : '${ScheduleVO.schedule_content}',
							start : '${ScheduleVO.schedule_start_day}',
							end : '${ScheduleVO.schedule_end_day}',
							color : '${ScheduleVO.schedule_color}'
						},
					</c:forEach>
				   {
				     title  : 'default',
				   }
				],
			  	eventClick: function(info) {
			  		 console.log(info);
			  		 scheduleId = info.event.id;
			  		 //sessionStorage.setItem("scheduleId", scheduleId);
			  		 //console.log(scheduleId);
			  		 //console.log( sessionStorage.getItem("scheduleId"));
			  	 	 
			  		 
			  		 //let memberId = info.event.memberId;
			  		 let title = info.event.title; 
			  		 //let start = getFormatDate(info.event.start);
			  		 //let end = getFormatDate(info.event.end);
			  		 let start = info.event.start;
			  		 let end = info.event.end;
			  		 //let share = ${ScheduleList.get(scheduleId).schedule_share};
			  		 console.log(scheduleId);
			  		 //console.log(memberId);
			  		 let color = "${ScheduleList.get(scheduleId).schedule_color}";
			  		 let content = "${ScheduleList.get(scheduleId).schedule_content}";
			  		 console.log(content);
			  		 //$("#flag").val(share).prop("selected", true);
			  		 $("#colorSelect").val(color).prop("selected", true);
			  		 $("#title").val(title);
			  		 $("#content").val(content);
			  		 $("#start_date").val(start);
			  		 $("#end_date").val(end); 
			  		 $("#myModal5").modal('show');
			  		 //scheduleModalView();
				},
			});
			calendar.render();
		});
		
		//날짜 변환 d에서 yyyy-mm-dd hh:mm?형태로
		/*
		function getFormatDate(date){
			date.setHours(date.getHours() + 9); 
			return date.toISOString().replace('T', ' ').substring(0, 16);
		}*/
		
		function scheduleModalView() {
			var param = {'schedule_id':sessionStorage.getItem("scheduleId")};
			$.ajax({
				url: "ScheduleDetailView",
				type: "GET",
				data: param,
				success: function(data) {
					//console.log(data);
					$("#myModal5").modal('show');
 					if (data == 1) {
						 $("#myModal5").modal('show');
					}
					else {
						alert('오류 : 관리자에게 문의해주세요.');
					}
				}
			});
		}
		
	  	function closeModal() {
	  		$("#title").val("");
	  		$("#content").val("");
			$("#datetimepicker").val("");
			$("#datetimepicker2").val("");
	  		$("#myModal5").modal('hide');
 		};
 	
	
	</script>
	<jsp:include page="modal/detailModalView.jsp"/>
	<!-- fullcalendar CDN -->
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
	<!-- fullcalendar 언어 CDN -->
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
</body>
</html>