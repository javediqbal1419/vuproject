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
									Users Views</a></li>
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

			<div class="container-fluid">
				<div class="animated fade-in">
					<div class="row">
						<table
							class="table table-responsive-sm table-hover table-outline mb-5 ">
							<thead class="thead-light">
								<tr>
									<th class="text-center"><i class="fa fa-user"></i></th>
									<th>User</th>
									<th class="text-center">Assigned Projects</th>
									<th>Project Progress</th>
									<th class="text-center">Assigned Tasks</th>
									<th>Task Progress</th>
								</tr>
							</thead>
							<tbody>



								<!-- user1 -->
								<c:forEach items="${userview}" var="user" varStatus="countST">
									<tr>
										<td class="text-center">


											<div class="avatar">
												<img
													src="https://gui-projects.s3.amazonaws.com/static/core/avatar/blank_profile.png"
													class="img-avatar" alt=""> <span
													class="avatar-status badge-success"></span>
											</div>
										</td>
										<td>


											<div>${user.name }</div>

											<div class="small text-muted">
												<span>Joined:</span> | ${user.u_currentDate}
											</div>
										</td>
										<td class="text-center"><span
											class="badge badge-pill badge-dark">${user.proCount}</span></td>
										<td>
											<div class="clearfix">
												<div class="float-left">
													<strong>50%</strong>
												</div>
												<div class="float-right">
													<small class="text-muted">of Total Projects</small>
												</div>
											</div>
											<div class="progress progress-xs">
												<div class="progress-bar bg-warning" role="progressbar"
													style="width: 50%" aria-valuenow="74" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</td>
										<td class="text-center"><span
											class="badge badge-pill badge-dark">${user.taskCount}</span> <span
											class="badge badge-pill badge-dark"></span></td>
										<td>

											<div class="clearfix">
												<div class="float-left">
													<strong>70%</strong>
												</div>
												<div class="float-right">
													<small class="text-muted">of Total Tasks</small>
												</div>
											</div>
											<div class="progress progress-xs">
												<div class="progress-bar bg-warning" role="progressbar"
													style="width: 70%" aria-valuenow="74" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
		</main>
	</div>


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
