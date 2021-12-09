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
</head>
<body>
<div class="modal fade" id="myModal5" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-xl modal-dialog-centered">
		<div class="modal-content">
			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">일정 ${scheduleDetailView.getSchedule_title()}</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<!-- Modal body -->
			<div class="modal-body">
				<div class="form-group row">
					<div class="col-xs-6 col-md-6">
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text"><b>시작일</b></span>
								
							</div>
							<input type="date" class="form-control" id="start_date" name="start_date" >
						</div>
					</div>
					<div class="col-xs-6 col-md-6">
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text"><b>종료일</b> ${scheduleDetailView.getSchedule_end_day() }</span>
							</div>
				        	<input type="date" class="form-control" id="end_date" name="end_date">
						</div>
					</div>
	                <div class="col-xs-8 col-md-8">
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text"><b>색상</b></span>
							</div>
							<select class="form-control" name="colorSelect" id="colorSelect">
				                <option value="#D25565" style="color:#D25565;">빨간색</option>
			                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
			                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
			                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
			                    <option value="#f06595" style="color:#f06595;">핑크색</option>
			                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
			                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
			                    <option value="#4d638c" style="color:#4d638c;">남색</option>
			                    <option value="#495057" style="color:#495057;">검정색</option>
	               			</select>
						</div>
	                  </div>
					<div class="col-xs-4 col-md-4">
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text"><b>공유여부</b></span>
							</div>
							<select class="form-control" id="flag" name="flag">
								<option value="1">O</option>
								<option value="0">X</option>
							</select>
						</div>
					</div>
					<div class="col-xs-12 col-md-12">
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text"><b>제목 ${scheduleDetailView.getSchedule_title()}</b></span>
							</div>
							<input type="text" id="title" name="title" value="${scheduleDetailView.getSchedule_title()}" class="form-control" >
						</div>
					</div>
					<div class="container">
						<label for="content" class="form-label"><strong>내용</strong></label>
						<textarea class="form-control h-25" rows="10">
						
						</textarea>	<input type="text" id="content" name="content" class="form-control" >
					</div>
				</div>
			</div>
			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="">등록</button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="closeModal()">취소</button>
			</div>
		</div>
	</div>
</div>
<c:out value=""></c:out>
<script type="text/javascript">
//let asd = "${scheduleDetailView.getSchedule_title()}";

/* asd =  "${scheduleDetailView.getSchedule_title()}";
$('#title').val(asd).text(); */
</script>
</body>

