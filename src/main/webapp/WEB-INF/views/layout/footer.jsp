<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<div class="modal fade " id="myModal1" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">본사</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<table class="table table-hover table-white">
					<colgroup>
						<col width="7%">
						<col width="7%">
						<col width="7%">
						<col width="7%">
						<col width="7%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr align="center">
							<th>사원번호</th>
							<th>사원명</th>
							<th>직급</th>
							<th>근무형태</th>
							<th>근무지</th>
							<th>출근시간</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${timeCardList}" var="timeCardListVO">
							<c:choose>	
								<c:when test="${timeCardListVO.work_pattern == '본사'}">
									<tr align="center">
										<td>${timeCardListVO.member_no}</td>
										<td>${timeCardListVO.member_name}</td>
										<td>${timeCardListVO.member_class}</td>
										<td>${timeCardListVO.work_pattern}</td>
										<td>${timeCardListVO.work_place}</td>
										<td>${fn:replace(fn:replace(timeCardListVO.work_start, 'PM', '오후'), 'AM', '오전')}</td>
									</tr>
								
								</c:when>
							</c:choose>
						</c:forEach>
					</tbody>
				</table>
			
			
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
	<div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">외근</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<table class="table table-hover table-white">
					<colgroup>
						<col width="7%">
						<col width="7%">
						<col width="7%">
						<col width="7%">
						<col width="7%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr align="center">
							<th>사원번호</th>
							<th>사원명</th>
							<th>직급</th>
							<th>근무형태</th>
							<th>근무지</th>
							<th>출근시간</th>
						</tr>
					</thead>
					<tbody>
						
						<c:forEach items="${timeCardList}" var="timeCardListVO">
							<c:choose>	
								<c:when test="${timeCardListVO.work_pattern == '외근'}">
									<tr align="center">
										<td>${timeCardListVO.member_no}</td>
										<td>${timeCardListVO.member_name}</td>
										<td>${timeCardListVO.member_class}</td>
										<td>${timeCardListVO.work_pattern}</td>
										<td>${timeCardListVO.work_place}</td>
										<td>${fn:replace(fn:replace(timeCardListVO.work_start, 'PM', '오후'), 'AM', '오전')}</td>
									</tr>
								</c:when>
							</c:choose>
						</c:forEach>
					</tbody>
				</table>
			
			
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
	<div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">휴가</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<table class="table table-hover table-white">
					<colgroup>
						<col width="7%">
						<col width="7%">
						<col width="7%">
						<col width="7%">
						<col width="7%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr align="center">
							<th>사원번호</th>
							<th>사원명</th>
							<th>직급</th>
							<th>휴가종류</th>
							<th>시작일</th>
							<th>종료일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${vacationList}" var="vacationListVO">
							<tr align="center">
								<td>${vacationListVO.member_no}</td>
								<td>${vacationListVO.member_name}</td>
								<td>${vacationListVO.member_class}</td>
								<td>${vacationListVO.vacation_kind}</td>
								<td>${vacationListVO.vacation_start_day}</td>
								<td>${vacationListVO.vacation_end_day}</td>
							</tr>
								
						</c:forEach>
					</tbody>
				</table>
			
			
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
	<div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">출장</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<table class="table table-hover table-white">
					<colgroup>
						<col width="7%">
						<col width="7%">
						<col width="7%">
						<col width="7%">
						<col width="7%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr align="center">
							<th>사원번호</th>
							<th>사원명</th>
							<th>직급</th>
							<th>근무형태</th>
							<th>근무지</th>
							<th>출근시간</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${timeCardList}" var="timeCardListVO">
							<c:choose>	
								<c:when test="${timeCardListVO.work_pattern == '출장'}">
									<tr align="center">
										<td>${timeCardListVO.member_no}</td>
										<td>${timeCardListVO.member_name}</td>
										<td>${timeCardListVO.member_class}</td>
										<td>${timeCardListVO.work_pattern}</td>
										<td>${timeCardListVO.work_place}</td>
										<td>${fn:replace(fn:replace(timeCardListVO.work_start, 'PM', '오후'), 'AM', '오전')}</td>
									</tr>
								</c:when>
							</c:choose>
						</c:forEach>
					</tbody>
				</table>
			
			
			</div>
			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
