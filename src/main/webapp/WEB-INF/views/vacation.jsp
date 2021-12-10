<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<!--author 손호영-->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>휴가/신청 관리</title>
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="./resources/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="./resources/dist/css/adminlte.min.css">
</head>
<body>

	
		<!-- 헤더 -->
	<jsp:include page="layout/header.jsp" />

	<!-- 사이드 바 -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4">
		<jsp:include page="layout/sidebar.jsp" />
	</aside>
	
	

	<div class="wrapper">
		<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
			<div class="dropdown-divider"></div>
			<a href="#" class="dropdown-item"> <!-- Message Start -->
				<div class="media">
					<img src="./resources/dist/img/user8-128x128.jpg" alt="User Avatar"
						class="img-size-50 img-circle mr-3">
					<div class="media-body">
						<h3 class="dropdown-item-title">
							John Pierce <span class="float-right text-sm text-muted"><i
								class="fas fa-star"></i></span>
						</h3>
						<p class="text-sm">I got your message bro</p>
						<p class="text-sm text-muted">
							<i class="far fa-clock mr-1"></i> 4 Hours Ago
						</p>
					</div>
				</div> <!-- Message End -->
			</a>
			<div class="dropdown-divider"></div>
			<a href="#" class="dropdown-item"> <!-- Message Start -->
				<div class="media">
					<img src="./resources/dist/img/user3-128x128.jpg" alt="User Avatar"
						class="img-size-50 img-circle mr-3">
					<div class="media-body">
						<h3 class="dropdown-item-title">
							Nora Silvester <span class="float-right text-sm text-warning"><i
								class="fas fa-star"></i></span>
						</h3>
						<p class="text-sm">The subject goes here</p>
						<p class="text-sm text-muted">
							<i class="far fa-clock mr-1"></i> 4 Hours Ago
						</p>
					</div>
				</div> <!-- Message End -->
			</a>
			<div class="dropdown-divider"></div>
			<a href="#" class="dropdown-item dropdown-footer">See All
				Messages</a>
		</div>
	
	
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>손호영</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">잔여휴과</a></li>
								<li class="breadcrumb-item active">1</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">

				<!-- Default box -->
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">신청내역</h3>
						
						<div class="card-tools">		
							<button type="button" class="btn btn-success">신청하기</button>
							<button type="button" class="btn btn-tool"
								data-card-widget="collapse" title="Collapse">
								<i class="fas fa-minus"></i>
							</button>
							
						</div>
					</div>
					<div class="card-body">
						<table id="example2" class="table table-striped projects">
							<thead>
								<tr>
									<th style="width: 10%" class="text-center">Number</th>
									<th style="width: 10%" class="text-center">시작일</th>
									<th style="width: 10%" class="text-center">종료일</th>
									<th style="width: 10%" class="text-center">종류</th>
									<th style="width: 30%" class="text-center">비고</th>
									<th style="width: 10%" class="text-center">상태</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">1</td>
									<td class="text-center">2021-11-19</td>
									<td class="text-center">
									2021-11-24
										<!-- 
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar2.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar3.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar4.png">
											</li>
										</ul>
										
																
										 -->
									</td>
									
									<td class="text-center">월차</td>
									<td class="text-center">19일 월차 사용</td>
									<td class="text-center">처리중</td>
									<td class="project-actions text-right"><a class="btn btn-primary btn-sm" href="#"><i class="fas fa-folder"></i>상세보기</a> 
									<a class="btn btn-info btn-sm" href="#"> <i class="fas fa-pencil-alt"> </i>수정</a> 
									<a class="btn btn-danger btn-sm" href="#"> <i class="fas fa-trash"></i>삭제</a>
									
									</td>
								</tr>				
							</tbody>
							<tbody>
								<tr>
									<td class="text-center">1</td>
									<td class="text-center">2021-11-19</td>
									<td class="text-center">
									2021-11-24
										<!-- 
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar2.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar3.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar4.png">
											</li>
										</ul>
										
																
										 -->
									</td>
									
									<td class="text-center">월차</td>
									<td class="text-center">19일 월차 사용</td>
									<td class="text-center">처리중</td>
									<td class="project-actions text-right"><a class="btn btn-primary btn-sm" href="#"><i class="fas fa-folder"></i>상세보기</a> 
									<a class="btn btn-info btn-sm" href="#"> <i class="fas fa-pencil-alt"> </i>수정</a> 
									<a class="btn btn-danger btn-sm" href="#"> <i class="fas fa-trash"></i>삭제</a>
									
									</td>
								</tr>				
							</tbody><tbody>
								<tr>
									<td class="text-center">1</td>
									<td class="text-center">2021-11-19</td>
									<td class="text-center">
									2021-11-24
										<!-- 
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar2.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar3.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar4.png">
											</li>
										</ul>
										
																
										 -->
									</td>
									
									<td class="text-center">월차</td>
									<td class="text-center">19일 월차 사용</td>
									<td class="text-center">처리중</td>
									<td class="project-actions text-right"><a class="btn btn-primary btn-sm" href="#"><i class="fas fa-folder"></i>상세보기</a> 
									<a class="btn btn-info btn-sm" href="#"> <i class="fas fa-pencil-alt"> </i>수정</a> 
									<a class="btn btn-danger btn-sm" href="#"> <i class="fas fa-trash"></i>삭제</a>
									
									</td>
								</tr>				
							</tbody><tbody>
								<tr>
									<td class="text-center">1</td>
									<td class="text-center">2021-11-19</td>
									<td class="text-center">
									2021-11-24
										<!-- 
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar2.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar3.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar4.png">
											</li>
										</ul>
										
																
										 -->
									</td>
									
									<td class="text-center">월차</td>
									<td class="text-center">19일 월차 사용</td>
									<td class="text-center">처리중</td>
									<td class="project-actions text-right"><a class="btn btn-primary btn-sm" href="#"><i class="fas fa-folder"></i>상세보기</a> 
									<a class="btn btn-info btn-sm" href="#"> <i class="fas fa-pencil-alt"> </i>수정</a> 
									<a class="btn btn-danger btn-sm" href="#"> <i class="fas fa-trash"></i>삭제</a>
									
									</td>
								</tr>				
							</tbody>
							<tbody>
								<tr>
									<td class="text-center">1</td>
									<td class="text-center">2021-11-19</td>
									<td class="text-center">
									2021-11-24
										<!-- 
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar2.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar3.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="./resources/dist/img/avatar4.png">
											</li>
										</ul>
										
																
										 -->
									</td>
									
									<td class="text-center">월차</td>
									<td class="text-center">19일 월차 사용</td>
									<td class="text-center">처리중</td>
									<td class="project-actions text-right"><a class="btn btn-primary btn-sm" href="#"><i class="fas fa-folder"></i>상세보기</a> 
									<a class="btn btn-info btn-sm" href="#"> <i class="fas fa-pencil-alt"> </i>수정</a> 
									<a class="btn btn-danger btn-sm" href="#"> <i class="fas fa-trash"></i>삭제</a>
									
									</td>
								</tr>				
							</tbody>
							
							
							
						</table>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
	


		
	</div>
	<!-- ./wrapper -->
	
	<jsp:include page="layout/footer.jsp"/>

	<!-- jQuery -->
	<script src="./resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="./resources/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="./resources/dist/js/demo.js"></script>


	



</body>
</html>