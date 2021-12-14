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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<!--코드미러 -->
<script src="<c:url value="/resources/js/codemirror.js"/>"></script>
<link href='<c:url value="/resources/css/codemirror.css"/>' rel='stylesheet' />

<!--  -->
<script src="<c:url value="/resources/js/dropdown.js"/>"></script>

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
				<h4><%=now %>일 일정등록</h4><br>
			</div>
			
			<div class="containerTop">
				<div><font size="2">No. ${scheduleDetailView.schedule_id}</font></div>
				<div><font size="2">일정 : ${scheduleDetailView.getSchedule_start_day()} ~ ${scheduleDetailView.getSchedule_end_day()}</font></div>
			</div>
			
			
			<hr style=background-color:#368AFF;>
			<div class="d-flex flex-column">
				<form>
					<div>
						<div>
						<i class="fa fa-plus-square" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample"></i>
						<span style="margin-left:10px;">상세정보</span>
						</div>
						<div class="collapse" id="collapseExample">
							<div class="well">
								<table class="table table-hover table-white">
									<colgroup>
										<col width="5%">
										<col width="30%">
									</colgroup>
									<thead>
										<tr>
											<th>제목</th>
											<td>${scheduleDetailView.getSchedule_title()}</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>내용</th>
											<td>${scheduleDetailView.schedule_content}</td>
										</tr>
										<tr>
											<th>작성자</th>
											<td>${scheduleDetailView.member_id}</td>
										</tr>
									</tbody>
								</table>	
							</div>
						</div>
					</div>
					<hr>
					기본정보
					<div class="form-group row">
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
									<span class="input-group-text"><b>작성자</b></span>
								</div>
								<input type="text" value="${member.member_id}" class="form-control" >
							</div>
						</div>
						
					</div>
					
					<!-- 개요 -->
					내용
					<div class="form-group">
						<textarea class="form-control" rows="5" id="content" name="content"></textarea>	
					</div>
					코드
					<div>
						<textarea id="myTextarea" class="p-3"></textarea>
					</div>
					
					<hr style=background-color:#368AFF;>
					<!-- 이전, 수정 버튼 -->
					<div align="right">
						<button type="button" class="btn btn-primary" onclick="scheduleWorkInsert()">확인</button>
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
	  
	  
		function scheduleWorkInsert() {
			var param = {'schedule_id,':$("#m_userId").val(), 'm_pw': $("#m_pw").val(), };
			$.ajax({
				url: "ScheduleWorkInsert",
				type: "POST",
				data: param,
				success: function(data) {
					if (data != 1) {
						alert('등록 실패 : 관리자에게 문의해주세요.');
					}
					else {
						alert('등록 되었습니다.');
						location.href = "home"
					}
				}
			});
		}
	</script>
</body>

