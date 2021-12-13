<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<!--코드미러 -->
<script src="<c:url value="/resources/js/codemirror.js"/>"></script>
<link href='<c:url value="/resources/css/codemirror.css"/>' rel='stylesheet' />
<style type="text/css">

.containerTop {
	display: flex;
	justify-content: space-between;
	align-items: flex-end
}
</style>
</head>

<body>
	<div class="container-fluid">
		<div>
			<div class="form-title text-center">
			<br>
				<h4>일정확인</h4><br>
			</div>
			
			<div class="containerTop">
				<div><font size="2">No. ${scheduleDetailView.schedule_id}</font></div>
				<div><font size="2">일정 : ${scheduleDetailView.getSchedule_start_day()} ~ ${scheduleDetailView.getSchedule_end_day()}</font></div>
			</div>
			
			
			<hr style=background-color:#368AFF;>
			<div class="d-flex flex-column">
			
				<form>
					기본정보
					<div class="form-group row">
						<div class="col-xs-6 col-md-6">
							<div class="input-group my-2 mb-1">
								<div class="input-group-prepend">
									<span class="input-group-text"><b>제목</b></span>
								</div>
								<input type="text" value="${scheduleDetailView.getSchedule_title()}" class="form-control" >
							</div>
						</div>
						<div class="col-xs-6 col-md-6">
							<div class="input-group my-2 mb-1">
								<div class="input-group-prepend">
									<span class="input-group-text"><b>작성자</b></span>
								</div>
								<input type="text" value="${scheduleDetailView.getMember_id()}" class="form-control" >
							</div>
						</div>
						
					</div>
					
					<!-- 개요 -->
					내용
					<div class="form-group">
						<textarea class="form-control" rows="5" id="content" name="content">${scheduleDetailView.schedule_content}</textarea>	
					</div>
					
					<hr style=background-color:#368AFF;>
					<!-- 이전, 수정 버튼 -->
					<div align="right">
						<button type="button" class="btn btn-primary" onclick="scheduleDetailGo(${scheduleDetailView.schedule_id});">등록하기</button>
						<button type="button" class="btn btn-secondary" onclick="self.close();">취소</button>
			        </div>
			        <br>
				</form>
			</div>
		</div>
	</div>


	<script> 
	  var editor = CodeMirror.fromTextArea(myTextarea, {
	    lineNumbers: true
	  });

	  function scheduleDetailGo(sId) { 
		  var popup = window.open('ScheduleDetailView?schedule_id='+sId , 'a', 'width=800px,height=840px,left=300,top=100');
	  }

	 
	</script>
</body>

