<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.time.LocalDateTime"%>
<%
   //현재시간 구해서 String으로 formating
   LocalDateTime nowTime = LocalDateTime.now();
   
   DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
   String now = nowTime.format(dateTimeFormatter);
%>

<body>
<footer class="main-footer">
	<strong>Copyright &copy; 2014-2021 <a
		href="https://adminlte.io">TCAT</a>.
	</strong> All rights reserved.
	<div class="float-right d-none d-sm-inline-block">
		<b>Version</b> 1.0.0
	</div>
</footer>

<!-- 모달창 -->
<div class="modal fade" id="myModal1" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-xl modal-dialog-centered">
		<div class="modal-content">
			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">본사</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
			
				<c:forEach items="${timeCardList}" var="timeCardListVO">
					<%-- <c:when test="${timeCardListVO.work_pattern} == 본사">
					
					</c:when> --%>
					<tr>
						<td>${timeCardListVO.member_id}</td>
						<td>${timeCardListVO.work_pattern}</td>
						<td>${timeCardListVO.work_place}</td>
					</tr>
				</c:forEach>
			
			</div>
			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<!-- 모달창 -->
<div class="modal fade" id="myModal2" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-xl modal-dialog-centered">
		<div class="modal-content">
			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">외근</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<img class="card-img-top rounded img-fluid" src="https://src.hidoc.co.kr/image/lib/2021/1/20/1611132055778_0.jpg">
			</div>
			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<!-- 모달창 -->
<div class="modal fade" id="myModal3" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-xl modal-dialog-centered">
		<div class="modal-content">
			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">휴가</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<img class="card-img-top rounded img-fluid" src="https://pds.joins.com/news/component/htmlphoto_mmdata/201702/10/htm_2017021010519781328.jpg">
			</div>
			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<!-- 모달창 -->
<div class="modal fade" id="myModal4" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-xl modal-dialog-centered">
		<div class="modal-content">
			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">출장</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<img class="card-img-top rounded img-fluid" src="https://mblogthumb-phinf.pstatic.net/MjAxNzAxMDRfNCAg/MDAxNDgzNDkxNTIyNDI5.yETB-IV3lJ0ePfbkJb_zZzEEUH-CkX6MvnZAMKAZ72sg.tQ1Aa2WjH0bUzK2-wmOvwH8_IQITtmHLM7uTrI6ioJUg.JPEG.davidek92/2017-01-04_09-52-31.jpg?type=w800">
			</div>
			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
