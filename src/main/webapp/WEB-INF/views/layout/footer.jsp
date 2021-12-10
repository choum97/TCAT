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

<!--author 손호영   -->
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
				<img class="card-img-top rounded img-fluid" src="data:image/jpeg;base64,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">
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
