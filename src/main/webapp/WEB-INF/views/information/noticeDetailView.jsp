<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!--author 김요한   -->
<title>TCAT Dashboard</title>
</head>
<body>
	<div class="wrapper">
		<!-- 헤더 -->
		<jsp:include page="../layout/header.jsp"/>
		
		<!-- 사이드 바 -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<jsp:include page="../layout/sidebar.jsp"/>
		</aside>

		<div class="content-wrapper"> <!-- 파랑색배경 -->
			<!-- /.content-header -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">공지사항</h1>
						</div>
					</div>
				</div>
			</div>
		
			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
				<hr>
					<h4 id="title">제목 : <c:out escapeXml="false" value="${content.title }"/></h4>
					
					<div class="d-flex">
						<small class="text-muted">작성자 : TCAT</small>
						<div class="ml-auto">
							<p class="card-text"><small class="text-muted">작성일 : ${content.reg_date }</small></p>
						</div>
					</div>
					<div class="jumbotron">
						<p id="content"><c:out escapeXml="false" value="${fn:replace(content.getContent(), crlf, '<br>')}"/></p>
					</div>
					<div class="row mt-3">
						<div class="col-auto mr-auto"></div>
						<div class="col-auto">
							<button type="button" class="btn btn-primary" onclick="location.href='noticeView'">목록</button>
						</div>
					</div>
					<hr>
				</div>
			</section>
			
		</div>
		
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- ./wrapper -->


</body>
</html>