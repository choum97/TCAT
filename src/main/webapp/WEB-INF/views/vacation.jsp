<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>휴가/신청 관리</title>
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="../../plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>
<body>

	<jsp:include page="layout/header.jsp" />

	<div class="wrapper">

		<!-- 사이드 바 -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<jsp:include page="layout/sidebar.jsp" />
		</aside>



		<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">

			<div class="dropdown-divider"></div>
			<a href="#" class="dropdown-item"> <!-- Message Start -->
				<div class="media">
					<img src="../../dist/img/user8-128x128.jpg" alt="User Avatar"
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
					<img src="../../dist/img/user3-128x128.jpg" alt="User Avatar"
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
							<button type="button" class="btn btn-primary">신청하기</button>
							<button type="button" class="btn btn-tool"
								data-card-widget="collapse" title="Collapse">
								<i class="fas fa-minus"></i>
							</button>
							
						</div>
					</div>
					<div class="card-body p-0">
						<table class="table table-striped projects">
							<thead>
								<tr>
									<th style="width: 1%">#</th>
									<th style="width: 20%">Project Name</th>
									<th style="width: 30%">Team Members</th>
									<th>Project Progress</th>
									<th style="width: 8%" class="text-center">Status</th>
									<th style="width: 20%"></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>#</td>
									<td><a> AdminLTE v3 </a> <br /> <small> Created
											01.01.2019 </small></td>
									<td>
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar2.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar3.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar4.png">
											</li>
										</ul>
									</td>
									<td class="project_progress">
										<div class="progress progress-sm">
											<div class="progress-bar bg-green" role="progressbar"
												aria-valuenow="57" aria-valuemin="0" aria-valuemax="100"
												style="width: 57%"></div>
										</div> <small> 57% Complete </small>
									</td>
									<td class="project-state"><span
										class="badge badge-success">Success</span></td>
									<td class="project-actions text-right"><a
										class="btn btn-primary btn-sm" href="#"> <i
											class="fas fa-folder"> </i> View
									</a> <a class="btn btn-info btn-sm" href="#"> <i
											class="fas fa-pencil-alt"> </i> Edit
									</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> Delete
									</a></td>
								</tr>
								<tr>
									<td>#</td>
									<td><a> AdminLTE v3 </a> <br /> <small> Created
											01.01.2019 </small></td>
									<td>
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar2.png">
											</li>
										</ul>
									</td>
									<td class="project_progress">
										<div class="progress progress-sm">
											<div class="progress-bar bg-green" role="progressbar"
												aria-valuenow="47" aria-valuemin="0" aria-valuemax="100"
												style="width: 47%"></div>
										</div> <small> 47% Complete </small>
									</td>
									<td class="project-state"><span
										class="badge badge-success">Success</span></td>
									<td class="project-actions text-right"><a
										class="btn btn-primary btn-sm" href="#"> <i
											class="fas fa-folder"> </i> View
									</a> <a class="btn btn-info btn-sm" href="#"> <i
											class="fas fa-pencil-alt"> </i> Edit
									</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> Delete
									</a></td>
								</tr>
								<tr>
									<td>#</td>
									<td><a> AdminLTE v3 </a> <br /> <small> Created
											01.01.2019 </small></td>
									<td>
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar2.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar3.png">
											</li>
										</ul>
									</td>
									<td class="project_progress">
										<div class="progress progress-sm">
											<div class="progress-bar bg-green" role="progressbar"
												aria-valuenow="77" aria-valuemin="0" aria-valuemax="100"
												style="width: 77%"></div>
										</div> <small> 77% Complete </small>
									</td>
									<td class="project-state"><span
										class="badge badge-success">Success</span></td>
									<td class="project-actions text-right"><a
										class="btn btn-primary btn-sm" href="#"> <i
											class="fas fa-folder"> </i> View
									</a> <a class="btn btn-info btn-sm" href="#"> <i
											class="fas fa-pencil-alt"> </i> Edit
									</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> Delete
									</a></td>
								</tr>
								<tr>
									<td>#</td>
									<td><a> AdminLTE v3 </a> <br /> <small> Created
											01.01.2019 </small></td>
									<td>
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar2.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar3.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar4.png">
											</li>
										</ul>
									</td>
									<td class="project_progress">
										<div class="progress progress-sm">
											<div class="progress-bar bg-green" role="progressbar"
												aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												style="width: 60%"></div>
										</div> <small> 60% Complete </small>
									</td>
									<td class="project-state"><span
										class="badge badge-success">Success</span></td>
									<td class="project-actions text-right"><a
										class="btn btn-primary btn-sm" href="#"> <i
											class="fas fa-folder"> </i> View
									</a> <a class="btn btn-info btn-sm" href="#"> <i
											class="fas fa-pencil-alt"> </i> Edit
									</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> Delete
									</a></td>
								</tr>
								<tr>
									<td>#</td>
									<td><a> AdminLTE v3 </a> <br /> <small> Created
											01.01.2019 </small></td>
									<td>
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar4.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar5.png">
											</li>
										</ul>
									</td>
									<td class="project_progress">
										<div class="progress progress-sm">
											<div class="progress-bar bg-green" role="progressbar"
												aria-valuenow="12" aria-valuemin="0" aria-valuemax="100"
												style="width: 12%"></div>
										</div> <small> 12% Complete </small>
									</td>
									<td class="project-state"><span
										class="badge badge-success">Success</span></td>
									<td class="project-actions text-right"><a
										class="btn btn-primary btn-sm" href="#"> <i
											class="fas fa-folder"> </i> View
									</a> <a class="btn btn-info btn-sm" href="#"> <i
											class="fas fa-pencil-alt"> </i> Edit
									</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> Delete
									</a></td>
								</tr>
								<tr>
									<td>#</td>
									<td><a> AdminLTE v3 </a> <br /> <small> Created
											01.01.2019 </small></td>
									<td>
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar2.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar3.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar4.png">
											</li>
										</ul>
									</td>
									<td class="project_progress">
										<div class="progress progress-sm">
											<div class="progress-bar bg-green" role="progressbar"
												aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"
												style="width: 35%"></div>
										</div> <small> 35% Complete </small>
									</td>
									<td class="project-state"><span
										class="badge badge-success">Success</span></td>
									<td class="project-actions text-right"><a
										class="btn btn-primary btn-sm" href="#"> <i
											class="fas fa-folder"> </i> View
									</a> <a class="btn btn-info btn-sm" href="#"> <i
											class="fas fa-pencil-alt"> </i> Edit
									</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> Delete
									</a></td>
								</tr>
								<tr>
									<td>#</td>
									<td><a> AdminLTE v3 </a> <br /> <small> Created
											01.01.2019 </small></td>
									<td>
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar4.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar5.png">
											</li>
										</ul>
									</td>
									<td class="project_progress">
										<div class="progress progress-sm">
											<div class="progress-bar bg-green" role="progressbar"
												aria-valuenow="87" aria-valuemin="0" aria-valuemax="100"
												style="width: 87%"></div>
										</div> <small> 87% Complete </small>
									</td>
									<td class="project-state"><span
										class="badge badge-success">Success</span></td>
									<td class="project-actions text-right"><a
										class="btn btn-primary btn-sm" href="#"> <i
											class="fas fa-folder"> </i> View
									</a> <a class="btn btn-info btn-sm" href="#"> <i
											class="fas fa-pencil-alt"> </i> Edit
									</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> Delete
									</a></td>
								</tr>
								<tr>
									<td>#</td>
									<td><a> AdminLTE v3 </a> <br /> <small> Created
											01.01.2019 </small></td>
									<td>
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar3.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar4.png">
											</li>
										</ul>
									</td>
									<td class="project_progress">
										<div class="progress progress-sm">
											<div class="progress-bar bg-green" role="progressbar"
												aria-valuenow="77" aria-valuemin="0" aria-valuemax="100"
												style="width: 77%"></div>
										</div> <small> 77% Complete </small>
									</td>
									<td class="project-state"><span
										class="badge badge-success">Success</span></td>
									<td class="project-actions text-right"><a
										class="btn btn-primary btn-sm" href="#"> <i
											class="fas fa-folder"> </i> View
									</a> <a class="btn btn-info btn-sm" href="#"> <i
											class="fas fa-pencil-alt"> </i> Edit
									</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> Delete
									</a></td>
								</tr>
								<tr>
									<td>#</td>
									<td><a> AdminLTE v3 </a> <br /> <small> Created
											01.01.2019 </small></td>
									<td>
										<ul class="list-inline">
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar3.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar4.png">
											</li>
											<li class="list-inline-item"><img alt="Avatar"
												class="table-avatar" src="../../dist/img/avatar5.png">
											</li>
										</ul>
									</td>
									<td class="project_progress">
										<div class="progress progress-sm">
											<div class="progress-bar bg-green" role="progressbar"
												aria-valuenow="77" aria-valuemin="0" aria-valuemax="100"
												style="width: 77%"></div>
										</div> <small> 77% Complete </small>
									</td>
									<td class="project-state"><span
										class="badge badge-success">Success</span></td>
									<td class="project-actions text-right"><a
										class="btn btn-primary btn-sm" href="#"> <i
											class="fas fa-folder"> </i> View
									</a> <a class="btn btn-info btn-sm" href="#"> <i
											class="fas fa-pencil-alt"> </i> Edit
									</a> <a class="btn btn-danger btn-sm" href="#"> <i
											class="fas fa-trash"> </i> Delete
									</a></td>
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



		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="../../plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../../dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../../dist/js/demo.js"></script>












	<jsp:include page="layout/footer.jsp" />

</body>
</html>