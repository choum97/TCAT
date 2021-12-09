<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>TCAT Dashboard</title>

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="sweetalert2.all.min.js"></script>
<!-- fullcalendar CDN -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
<!--공지사항 롤링 -->
<style type="text/css">
.none{display:none}
#ticker{float:left;width:100px;}
.navi{float:right;}
.block {border:2px ; padding:0 5px; height:20px; overflow:hidden; background:#F6F6F6; width:100%; font-family:Gulim; font-size:12px;float:left;}
.block ul,
.block li {margin:0; padding:0; list-style:none;}
.block li a {display:block; height:20px; line-height:20px; color:#555; text-decoration:none;}
.unstyled-button {border: none; padding: 0; background: none;}
</style>
</head>


<body class="hold-transition sidebar-mini layout-fixed">
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
					<script src='<c:url value="/resources/js/rolling.js"/>'></script>
					<hr>
					<div>
						<h3>근태 기록</h3>
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
	       	right: '',
	       	},
	       	initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
	       	//navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
	       	editable: true, // 수정 가능?
	       	selectable: true, // 달력 일자 드래그 설정가능
	       	nowIndicator: true, // 현재 시간 마크
	       	dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
	       	locale: 'ko', // 한국어 설정
        	end: 'today prev,next',
        	events: [
                /* {
                  title          : '출근',
                  start          : '2021-11-01',
                  allDay         : true,
                  backgroundColor: '#00a65a',
                  borderColor    : '#00a65a',
                },
                {
                    title          : '출근',
                    start          : '2021-11-03',
                    allDay         : true,
                    backgroundColor: '#00a65a',
                    borderColor    : '#00a65a',
                  },
                {
                    title          : '결근',
                    start          : '2021-11-25',
                    allDay         : true,
                    backgroundColor: 'red',
                    borderColor    : 'red',
                  }, */
                  {
                	title          : ${timeCardList.work_pattern},
                    start          : ${timeCardList.work_day_start},
                    end			   : ${timeCardList.work_day_end},
                    allDay         : true,
                    backgroundColor: 'blue',
                    borderColor    : 'blue',
                  },
                  {
                	  title: ''
                  }
              ],
              eventClick: function(info) {
            	  if(info.event.title == '출근'){
            	  Swal.fire({
            		  icon: 'success',
            		  title: info.event.title,
            		  text: info.event.start,
            		  showCancelButton: true,
            		  cancelButtonText: '닫기',
            		  confirmButtonText: '정정 신청'
            		});
            	  } else if (info.event.title == '결근'){
            		  Swal.fire({
                		  icon: 'error',
                		  title: info.event.title,
                		  text: info.event.start,
                		  showCancelButton: true,
                		  cancelButtonText: '닫기',
                		  confirmButtonText: '정정 신청'
                		});
            	  } else {
            		  Swal.fire({
                		  icon: 'info',
                		  title: info.event.title,
                		  text: info.event.start,
                		  showCancelButton: true,
                		  cancelButtonText: '닫기',
                		  confirmButtonText: '정정 신청'
            	  		});
            	  }
                      return false;
              }
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