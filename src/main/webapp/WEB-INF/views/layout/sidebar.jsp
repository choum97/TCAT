<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 로고 있는 곳-->
<a href="index3.html" class="brand-link"> <img src="./resources/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
	<span class="brand-text font-weight-light">TCAT</span>
</a>

<div class="sidebar">
	<div class="user-panel mt-3 pb-3 mb-3 d-flex">
		<div class="image">
			<img src="./resources/dist/img/user2-160x160.jpg"
				class="img-circle elevation-2" alt="User Image">
		</div>
		<div class="info">
			<a href="#" class="d-block">Alexander Pierce</a>
		</div>
	</div>

	<!-- SidebarSearch Form -->
	<div class="form-inline">
		<div class="input-group" data-widget="sidebar-search">
			<input class="form-control form-control-sidebar" type="search"
				placeholder="Search" aria-label="Search">
			<div class="input-group-append">
				<button class="btn btn-sidebar">
					<i class="fas fa-search fa-fw"></i>
				</button>
			</div>
		</div>
	</div>

	<!-- Sidebar Menu -->
	<nav class="mt-2">
		<ul class="nav nav-pills nav-sidebar flex-column"
			data-widget="treeview" role="menu" data-accordion="false">
			<li class="nav-item"><a href="./resources/pages/widgets.html" class="nav-link"> <i class="nav-icon fas fa-th"></i>
				<p>
					Home
				</p>
			</a></li>
			<li class="nav-item">
				<a href="#" class="nav-link"> <i class="nav-icon fas fa-copy"></i>
					<p>
						출근 관리 <i class="fas fa-angle-left right"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item"><a href="./resources/pages/layout/top-nav.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>Top Navigation</p>
					</a></li>
					<li class="nav-item"><a
						href="./resources/pages/layout/top-nav-sidebar.html" class="nav-link">
							<i class="far fa-circle nav-icon"></i>
							<p>Top Navigation + Sidebar</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/layout/boxed.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>Boxed</p>
					</a></li>
					<li class="nav-item"><a
						href="./resources/pages/layout/fixed-sidebar.html" class="nav-link"> <i
							class="far fa-circle nav-icon"></i>
							<p>Fixed Sidebar</p>
					</a></li>
					<li class="nav-item"><a
						href="./resources/pages/layout/fixed-sidebar-custom.html" class="nav-link">
							<i class="far fa-circle nav-icon"></i>
							<p>
								Fixed Sidebar <small>+ Custom Area</small>
							</p>
					</a></li>
					<li class="nav-item"><a
						href="./resources/pages/layout/fixed-topnav.html" class="nav-link"> <i
							class="far fa-circle nav-icon"></i>
							<p>Fixed Navbar</p>
					</a></li>
					<li class="nav-item"><a
						href="./resources/pages/layout/fixed-footer.html" class="nav-link"> <i
							class="far fa-circle nav-icon"></i>
							<p>Fixed Footer</p>
					</a></li>
					<li class="nav-item"><a
						href="./resources/pages/layout/collapsed-sidebar.html" class="nav-link">
							<i class="far fa-circle nav-icon"></i>
							<p>Collapsed Sidebar</p>
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
							<p>ChartJS</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/charts/flot.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>Flot</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/charts/inline.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>Inline</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/charts/uplot.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>uPlot</p>
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
							<p>General</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/UI/icons.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>Icons</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/UI/buttons.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>Buttons</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/UI/sliders.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>Sliders</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/UI/modals.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>Modals & Alerts</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/UI/navbar.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>Navbar & Tabs</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/UI/timeline.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>Timeline</p>
					</a></li>
					<li class="nav-item"><a href="./resources/pages/UI/ribbons.html"
						class="nav-link"> <i class="far fa-circle nav-icon"></i>
							<p>Ribbons</p>
					</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</div>
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
