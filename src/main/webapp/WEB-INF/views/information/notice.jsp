<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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
					
					<div class="row">
						<div class="col-sm-8">
							<form action="noticeSearch" method="GET" class="form-inline">
								<select class="form-control" id="search" name="search">
									<option value="title">제목</option>
								</select>
								<input type="text" id="keyword" name="keyword" class="form-control ml-1 mr-1" placeholder="검색어를 입력해주세요" required>
								<button type="submit" class="btn px-3 btn-primary">
									<i class="fas fa-search"></i>
								</button>
							</form>
						</div>	
						<div class="col-sm-4">
						</div>
                    </div>
                    <br>
					<table class="table table-hover table-white">
						<colgroup>
							<col width="1%">
							<col width="30%">
							<col width="5%">
						</colgroup>
						<thead>
							<tr>
								<th>No</th>
								<th>제목</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${NoticeList }" var="NoticeBoardVO">
								<tr>
									<c:choose>
										<c:when test="${NoticeBoardVO.important ne 'Y' }">
											<td>${NoticeBoardVO.nId }</td>
											<td><a href="noticeView?nId=${NoticeBoardVO.nId }">${NoticeBoardVO.title }</a></td>
											<td>${NoticeBoardVO.reDate }</td>
										</c:when>
										<c:otherwise>
											<td id="stresstable"><i class="fas fa-bullhorn"></i></td>
											<td id="stresstable"><a href="noticeView?nId=${NoticeBoardVO.nId }">${NoticeBoardVO.title }</a></td>
											<td id="stresstable">${NoticeBoardVO.reDate }</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</section>
		</div>
		
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- ./wrapper -->


</body>
</html>