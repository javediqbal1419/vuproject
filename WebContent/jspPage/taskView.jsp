<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.vu.dao.NewProjectDao" 
	import="java.util.*"
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
<title>Task View</title>

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
								href="/vuproject/taskView.jsp/"><i class="fa fa-user ml-2"></i>
									Users Views</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/vuproject/jspPage/taskView.jsp"><i
									class="fa fa-user ml-2"></i> Task`s Views</a></li>
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
		<main class="main"> <!-- Breadcrumb -->
		<ol class="breadcrumb">

			<li class="breadcrumb-item">Home</li>
			<li class="breadcrumb-item">Projects</li>
			<li class="breadcrumb-item active">Views</li>
		</ol>

		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<strong>22 Active Task | 20 Inactive Task</strong>
				</div>
				<div class="card-body">
					<div class="row">

						<div class="col-12 col-md-6 col-lg-4">
							<div class="card mx-2">
								<div class="card-body">
									<div class="h4 m-0">
									
									
									<c:forEach items="${tList}" var="task" varStatus="countST">
													<option value="${task.id}"><c:out value="${task.name}"></c:out></option>
												</c:forEach>
									


										<p class="text-right lead text-danger">Task Status</p>

									</div>
									<div>
									
									Projects
										
									</div>
									<p class="text-muted mb-0 text-right">22.0%</p>
									<div class="progress progress-xs mb-3">

										<div class="progress-bar bg-danger role="
											progressbar" style="width: 22.0%" aria-valuenow="25"
											aria-valuemin="0" aria-valuemax="100"></div>

									</div>
									<small class="text-muted"> User Name at here </small>
								</div>
							</div>
						</div>

						<div class="col-12 col-md-6 col-lg-4">
							<div class="card mx-2">
								<div class="card-body">
									<div class="h4 m-0">
										Task Name

										<p class="text-right lead text-success">Working</p>

									</div>
									<div>aaa</div>
									<p class="text-muted mb-0 text-right">5.0%</p>
									<div class="progress progress-xs mb-3">

										<div class="progress-bar bg-danger role="
											progressbar" style="width: 5.0%" aria-valuenow="25"
											aria-valuemin="0" aria-valuemax="100"></div>

									</div>
									<small class="text-muted">tester</small>
								</div>
							</div>
						</div>

						<div class="col-12 col-md-6 col-lg-4">
							<div class="card mx-2">
								<div class="card-body">
									<div class="h4 m-0">
										April 18, 2018

										<p class="text-right lead text-info">Done</p>

									</div>
									<div>ERP Implementation</div>
									<p class="text-muted mb-0 text-right">100.0%</p>
									<div class="progress progress-xs mb-3">

										<div class="progress-bar bg-success role="
											progressbar" style="width: 100.0%" aria-valuenow="25"
											aria-valuemin="0" aria-valuemax="100"></div>

									</div>
									<small class="text-muted">Description for ERP
										Implementation Project. Fusce interd...</small>
								</div>
							</div>
						</div>


						<div class="col-12 col-md-6 col-lg-4">
							<div class="card mx-2">
								<div class="card-body">
									<div class="h4 m-0">
										Sept. 12, 2019

										<p class="text-right lead text-success">Working</p>

									</div>
									<div>TEST PROJECT</div>
									<p class="text-muted mb-0 text-right">50.0%</p>
									<div class="progress progress-xs mb-3">

										<div class="progress-bar bg-warning role="
											progressbar" style="width: 50.0%" aria-valuenow="25"
											aria-valuemin="0" aria-valuemax="100"></div>

									</div>
									<small class="text-muted">EQWFQF</small>
								</div>
							</div>
						</div>

					</div>
					<br>
				</div>
			</div>
		</div>

		</main>
	</div>

	<footer class="app-footer">
		<span><a href="https://javediqbal1419.netlify.com">
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
