<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 로고 있는 곳-->
<a href="main" class="brand-link">
	<span class="brand-text font-weight-light">TCAT <font size="2px"></font></span>
</a>

<div class="sidebar">
	<div class="user-panel mt-3 pb-3 mb-3 d-flex">
		<div class="info">
			<a href="#" class="d-block">Alexander Pierce님</a>
		</div>
	</div>

	<!-- Sidebar Menu -->
	<nav class="mt-2">
		<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
			<li class="nav-item"><a href="main" class="nav-link"> <i class="nav-icon fas fa-th"></i>
				<p>
					Home
				</p>
			</a></li>
			<li class="nav-item">
				<a href="#" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
					<p>
						출근/퇴근 관리 <i class="fas fa-angle-left right"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item"><a href="./resources/pages/layout/top-nav.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>기록 확인</p>
					</a></li>
					<li class="nav-item"><a
						href="./resources/pages/layout/top-nav-sidebar.html" class="nav-link">
							<i class="far fa-circle nav-icon"></i>
							<p>정정 신청</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/layout/boxed.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>시간 설정</p>
					</a></li>
					<li class="nav-item"><a
						href="./resources/pages/layout/fixed-sidebar.html" class="nav-link"> <i
							class="far fa-circle nav-icon"></i>
							<p>연장 근무</p>
					</a></li>
				</ul>
			</li>
			<li class="nav-item">
				<a href="#" class="nav-link"> <i class="nav-icon fas fa-chart-pie"></i>
					<p>
						근무일정 관리 <i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item"><a href="./resources/pages/charts/chartjs.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>일정 목록</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/charts/flot.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>일정 작성</p>
					</a></li>
				</ul>
			</li>
			<li class="nav-item">
				<a href="#" class="nav-link"> 
					<i class="nav-icon fas fa-tree"></i><p>휴가/신청 관리 <i class="fas fa-angle-left right"></i></p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item"><a href="./resources/pages/UI/general.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>휴가 신청</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/UI/icons.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>잔여 휴가</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/UI/buttons.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>신청 내역</p>
					</a></li>
				</ul>
			</li>
			<li class="nav-item"><a href="main" class="nav-link"> <i class="nav-icon fas fa-th"></i>
				<p>
					공지사항
				</p>
			</a></li>
		</ul>
	</nav>
</div>

<script>
	$.widget.bridge('uibutton', $.ui.button)
</script>
