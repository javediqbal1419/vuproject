<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.vu.dao.NewProjectDao" import="java.util.*"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="CoreUI - Open Source Bootstrap Admin Template">
<meta name="author" content="Łukasz Holeczek">
<meta name="keyword"
	content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,Angular 2,Angular4,Angular 4,jQuery,CSS,HTML,RWD,Dashboard,React,React.js,Vue,Vue.js">
<meta name="google-site-verification"
	content="83fcqoPn-YTkXathQiicW-x3U2RWZh4PaPUzk91wtjY" />
<title>Project View</title>

<!-- Icons -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/all.css"
	integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1"
	crossorigin="anonymous">
<link
	href="https://gui-projects.s3.amazonaws.com/static/core/css/simple-line-icons.min.css"
	rel="stylesheet">

<!-- Main styles for this application -->
<link
	href="https://gui-projects.s3.amazonaws.com/static/core/css/estilo.css"
	rel="stylesheet">
<link
	href="https://gui-projects.s3.amazonaws.com/static/core/css/style.css"
	rel="stylesheet">

</head>

<body
	class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">

	<header class="app-header navbar">

		<img src="" alt="" class="brand-gui ml-2 d-none d-sm-block p-2">
		<button class="navbar-toggler sidebar-toggler d-md-down-none"
			type="button">
			<span class="navbar-toggler-icon"></span>
		</button>


		<ul class="nav navbar-nav ml-auto">


			<li class="nav-item dropdown"><a class="nav-link"
				data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
				aria-expanded="false"> <img
					src="https://gui-projects.s3.amazonaws.com/static/core/img/avatar/blank_profile.png"
					class="img-avatar" alt="AnonymousUser">

			</a></li>
		</ul>

	</header>

	<div class="app-body">
		<div class="sidebar">
			<nav class="sidebar-nav">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link" href="/"><i
							class="fa fa-home"></i> Home</a></li>
					<li class="nav-item"><a class="nav-link" href="/dashboard/"><i
							class="fa fa-tachometer-alt"></i> Dashboard</a></li>
					<li class="nav-item nav-dropdown"><a
						class="nav-link nav-dropdown-toggle" href="#"><i
							class="fa fa-tachometer-alt"></i> Views</a>
						<ul class="nav-dropdown-items">
							<li class="nav-item"><a class="nav-link" href="/projects/"><i
									class="fa fa-paper-plane ml-2"></i> Project's View</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/register/users/"><i class="fa fa-user ml-2"></i>
									User`s Views</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/register/users/"><i class="fa fa-user ml-2"></i>
									Task`s Views</a></li>
						</ul></li>

					<!--<li class="nav-title">-->
					<!--Theme-->
					<!--</li>-->
					<!--<li class="nav-item">-->
					<!--<a href="colors.html" class="nav-link"><i class="fa fa-tint"></i> Colors</a>-->
					<!--</li>-->
					<!--<li class="nav-item">-->
					<!--<a href="typography.html" class="nav-link"><i class="fa fa-user"></i> Typograhy</a>-->
					<!--</li>-->
					<li class="nav-title">Register</li>
					<li class="nav-item nav-dropdown"><a
						class="nav-link nav-dropdown-toggle" href="#"><i
							class="fa fa-puzzle-piece"></i> Projects</a>
						<ul class="nav-dropdown-items">
							<li class="nav-item"><a class="nav-link"
								href="/projects/new-project/"><i class="fa fa-plus ml-2"></i>
									New Project</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/projects/new-task/"><i class="fa fa-plus ml-2"></i>
									New Task</a></li>
						</ul></li>
					<li class="nav-item nav-dropdown"><a
						class="nav-link nav-dropdown-toggle" href="#"><i
							class="fa fa-user"></i> Users</a>
						<ul class="nav-dropdown-items">
							<li class="nav-item"><a class="nav-link"
								href="/register/new-user/"><i class="fa fa-user-plus ml-2"></i>
									Create New User</a></li>

						</ul></li>
					<li class="divider"></li>

				</ul>
			</nav>
			<button class="sidebar-minimizer brand-minimizer" type="button"></button>
		</div>

		<!-- Main content -->
		<main class="main">
			<!-- Breadcrumb -->
			<ol class="breadcrumb">

				<li class="breadcrumb-item">Home</li>
				<li class="breadcrumb-item">Projects</li>
				<li class="breadcrumb-item active">Views</li>
			</ol>

			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<strong> Total Number of Active Projects</strong>
					</div>
					<div class="card-body">
						<div class="row">

							<div class="col-sm-8">
								<div class="row">
									<div class="col-sm-6">
										<div class="callout callout-dark">
											<small class="text-muted">Tasks</small> <br> <strong
												class="h4">41</strong>
											<div class="chart-wrapper">
												<div class="chartjs-size-monitor"
													style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
													<div class="chartjs-size-monitor-expand"
														style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
														<div
															style="position: absolute; width: 1000000px; height: 1000000px; left: 0; top: 0"></div>
													</div>
													<div class="chartjs-size-monitor-shrink"
														style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
														<div
															style="position: absolute; width: 200%; height: 200%; left: 0; top: 0"></div>
													</div>
												</div>
												<canvas id="sparkline-chart-3" width="86" height="25"
													class="chartjs-render-monitor"
													style="display: block; width: 86px; height: 25px;"></canvas>
											</div>
										</div>
									</div>

									<div class="col-sm-6">
										<div class="callout callout-danger">
											<small class="text-muted">Overdue Tasks </small> <br> <strong
												class="h4">12</strong>
											<div class="chart-wrapper">
												<div class="chartjs-size-monitor"
													style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
													<div class="chartjs-size-monitor-expand"
														style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
														<div
															style="position: absolute; width: 1000000px; height: 1000000px; left: 0; top: 0"></div>
													</div>
													<div class="chartjs-size-monitor-shrink"
														style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
														<div
															style="position: absolute; width: 200%; height: 200%; left: 0; top: 0"></div>
													</div>
												</div>
												<canvas id="sparkline-chart-4" width="86" height="25"
													class="chartjs-render-monitor"
													style="display: block; width: 86px; height: 25px;"></canvas>
											</div>
										</div>
									</div>


								</div>

								<hr class="mt-0">
								<ul class="horizontal-bars type-2">
									<li><i class="fa fa-percent"></i> <span class="title">Projects</span>
										<span class="value">17.2%</span>
										<div class="bars">
											<div class="progress progress-xs">
												<div class="progress-bar bg-warning" role="progressbar"
													style="width: 17.2%" aria-valuenow="43" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div></li>
									<li class="divider"></li>

									<li class="my-2"><span class="badge badge-danger"
										style="width: 50px;">Stuck</span> <span class="title ml-1">a11</span>

										<span class="value"> <span class="text-muted small">deadline:
										</span>Dec. 11, 2019 <span class="text-muted small">(22.0%)</span>
									</span>
										<div class="bars">
											<div class="progress progress-xs">
												<div class="progress-bar bg-success" role="progressbar"
													style="width: 22.0%" aria-valuenow="22.0" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div></li>

									<li class="my-2"><span class="badge badge-info"
										style="width: 50px;">Working</span> <span class="title ml-1">aaa</span>

										<span class="value"> <span class="text-muted small">deadline:
										</span>Jan. 2, 2010 <span class="text-muted small">(5.0%)</span>
									</span>
										<div class="bars">
											<div class="progress progress-xs">
												<div class="progress-bar bg-success" role="progressbar"
													style="width: 5.0%" aria-valuenow="5.0" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div></li>

									<li class="my-2"><span class="badge badge-success"
										style="width: 50px;">Done!</span> <span class="title ml-1">ERP
											Implementation</span> <span class="value"> <span
											class="text-muted small">deadline: </span>April 18, 2018 <span
											class="text-muted small">(100.0%)</span>
									</span>
										<div class="bars">
											<div class="progress progress-xs">
												<div class="progress-bar bg-success" role="progressbar"
													style="width: 100.0%" aria-valuenow="100.0"
													aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div></li>

								</ul>
							</div>

						</div>

						<br>

					</div>
				</div>
			</div>
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<strong>22 Active Projects</strong>
					</div>
					<div class="card-body">
						<div class="row">
							<c:forEach items="${projectview}" var="project"
								varStatus="countST">

								<div class="col-12 col-md-6 col-lg-4">
									<div class="card mx-2">
										<div class="card-body">
											<div class="h4 m-0">
												${project.projectName }

												<p class="text-right lead text-danger">${project.p_status }</p>

											</div>
											<div>
												<div>${project.descp }</div>
											</div>
											<p class="text-muted mb-0 text-right">100.0%</p>
											<div class="progress progress-xs mb-3">

												<div class="progress-bar bg-danger role="
													progressbar" style="width: 100.0% " aria-valuenow="25"
													aria-valuemin="0" aria-valuemax="100"></div>

											</div>
											<small class="text-muted">${project.name}</small>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</main>


	</div>

	<footer class="app-footer">
		<span><a href="https://javediqbal1419.netlify.com/">
				Copyright </a> © 2019 | Project Manager (PMAN) Developed by Javed.</span>
	</footer>

	<!-- Bootstrap and necessary plugins -->
	<script
		src="https://gui-projects.s3.amazonaws.com/static/core/vendors/js/jquery.min.js"></script>
	<script
		src="https://gui-projects.s3.amazonaws.com/static/core/vendors/js/popper.min.js"></script>
	<script
		src="https://gui-projects.s3.amazonaws.com/static/core/vendors/js/bootstrap.min.js"></script>
	<script
		src="https://gui-projects.s3.amazonaws.com/static/core/vendors/js/pace.min.js"></script>
	<script
		src="https://gui-projects.s3.amazonaws.com/static/core/vendors/js/Chart.min.js"></script>

	<!-- CoreUI main scripts -->

	<script
		src="https://gui-projects.s3.amazonaws.com/static/core/js/app.js"></script>

	<!-- Plugins and scripts required by this views -->

	<!-- Custom scripts required by this view -->
	<script
		src="https://gui-projects.s3.amazonaws.com/static/core/js/main.js"></script>

</body>

</html>
