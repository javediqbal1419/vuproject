<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.vu.dao.NewProjectDao" import="java.util.*"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="home.jsp"/>
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

	

	<div class="app-body">
		
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
													<strong>${user.proPercent}%</strong>
												</div>
												<div class="float-right">
													<small class="text-muted">of Total Projects</small>
												</div>
											</div>
											<div class="progress progress-xs">
												<div class="progress-bar bg-warning" role="progressbar"
													style="width: ${user.proPercent}%" aria-valuenow="74" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</td>
										<td class="text-center"><span
											class="badge badge-pill badge-dark">${user.taskCount}</span> <span
											class="badge badge-pill badge-dark"></span></td>
										<td>

											<div class="clearfix">
												<div class="float-left">
													<strong>${user.taskPercent}%</strong>
												</div>
												<div class="float-right">
													<small class="text-muted">of Total Tasks</small>
												</div>
											</div>
											<div class="progress progress-xs">
												<div class="progress-bar bg-warning" role="progressbar"
													style="width: ${user.taskPercent}%" aria-valuenow="74" aria-valuemin="0"
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
