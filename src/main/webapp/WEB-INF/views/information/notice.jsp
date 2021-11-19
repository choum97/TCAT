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

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6"><br>
							<h1 class="m-0">Notice</h1><hr>
						</div>
					</div>
					
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
							<col width="1%">
							<col width="30%">
							<col width="5%">
						</colgroup>
						<thead>
							<tr>
								<th><input type="checkbox" name="allCheck"></th>
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
											<td><input type="checkbox" name="RowCheck" value="${NoticeBoardVO.nId }"></td>
											<td>${NoticeBoardVO.nId }</td>
											<td><a href="noticeView?nId=${NoticeBoardVO.nId }">${NoticeBoardVO.title }</a></td>
											<td>${NoticeBoardVO.reDate }</td>
										</c:when>
										<c:otherwise>
											<td id="stresstable"><input type="checkbox" name="RowCheck" value="${NoticeBoardVO.nId }"></td>
											<td id="stresstable"><i class="fas fa-bullhorn"></i></td>
											<td id="stresstable"><a href="noticeView?nId=${NoticeBoardVO.nId }">${NoticeBoardVO.title }</a></td>
											<td id="stresstable">${NoticeBoardVO.reDate }</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- 게시글 페이징 처리(기준 10개) -->
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<c:choose>
								<c:when test="${search ne null && keyword ne null }">
									<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="noticeSearch?search=${search}&keyword=${keyword}&page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="noticeSearch?search=${search}&keyword=${keyword}&page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:otherwise>
									</c:choose>
									<!-- 페이지 갯수만큼 버튼 생성 -->
									<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
										<c:choose>
											<c:when test="${i eq Paging.pageNo }">
												<li class="page-item disabled">
													<a class="page-link" href="noticeSearch?search=${search}&keyword=${keyword}&page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:when>
											<c:otherwise>
												<li class="page-item">
													<a class="page-link" href="noticeSearch?search=${search}&keyword=${keyword}&page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="noticeSearch?search=${search}&keyword=${keyword}&page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="noticeSearch?search=${search}&keyword=${keyword}&page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="notice?page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="notice?page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:otherwise>
									</c:choose>
									<!-- 페이지 갯수만큼 버튼 생성 -->
									<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
										<c:choose>
											<c:when test="${i eq Paging.pageNo }">
												<li class="page-item disabled">
													<a class="page-link" href="notice?page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:when>
											<c:otherwise>
												<li class="page-item">
													<a class="page-link" href="notice?page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="notice?page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="notice?page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</ul>
					</nav>
				</div>
			</section>
		</div>
		
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- ./wrapper -->


</body>
</html>