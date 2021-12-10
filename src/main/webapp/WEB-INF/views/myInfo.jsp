<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<!--author 빈현욱-->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>TCAT Dashboard</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>


<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- 헤더 -->
		<jsp:include page="layout/header.jsp"/>
		
		<!-- 사이드 바 -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<jsp:include page="layout/sidebar.jsp"/>
		</aside>
		
		<!-- 사원 정보 -->
		<div class="content-wrapper">
    	<!-- 사원 정보 헤더 -->
    	<section class="content-header">
      		<div class="container-fluid">
        		<div class="row mb-2">
          			<div class="col-sm-6">
            			<h1>사원 정보</h1>
          			</div>
          			<div class="col-sm-6">
            			<ol class="breadcrumb float-sm-right">
              				<li class="breadcrumb-item"><a href="main">Home</a></li>
              				<li class="breadcrumb-item active">사원 정보</li>
            			</ol>
          			</div>
        		</div>
      		</div><!-- /.container-fluid -->
    	</section>

	    <!-- Main content -->
    	<section class="content">

	    <!-- 사원정보 box -->
      	<div class="card card-solid">
        	<div class="card-body pb-0">
          		<div class="row">
            		<div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
              			<div class="card bg-light d-flex flex-fill">
                			<div class="card-header text-muted border-bottom-0">
                  				(주)포커스리더
                			</div>
                			<div class="card-body pt-0">
                  				<div class="row">
                    				<div class="col-7">
                      					<h2 class="lead"><b>사원 이름(임시)</b></h2>
                      					<p class="text-muted text-sm">
                      					<b>사원번호: </b> 1234567890 </p>
                      					<b>직   급: </b> 임시직급 </p>
                      					<b>입사날짜: </b> 2021-11-18 </p>
                      					<ul class="ml-4 mb-0 fa-ul text-muted">
                        					<li class="small"><span class="fa-li"><i class="fas fa-envelope"></i></span> 이메일 : ABCDEF@GHIJK.com</li>
                        					<li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> 전화번호 : 010) 1234 - 5678</li>
                     					</ul>
                    				</div>
                    				<div class="col-5 text-center">
                      					<img src="../../dist/img/user1-128x128.jpg" alt="user-avatar" class="img-circle img-fluid">
                    				</div>
                  				</div>
                			</div>
                			<div class="card-footer">
                  				<div class="text-right">
                    				<a href="update_myInfo" class="btn btn-sm btn-primary">
                      					<i class="fas fa-user"></i> 내정보 수정
                    				</a>
                  				</div>
                			</div>
              			</div>
            		</div>
      			</div>
      		<!-- 사원정보 box -->
      		</div>
      </div>
      </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 </div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<jsp:include page="layout/footer.jsp"/>
	<!-- ./wrapper -->
</body>
</html>