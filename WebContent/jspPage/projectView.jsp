<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.vu.dao.NewProjectDao" import="java.util.*"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="home.jsp" />
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

			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<strong> All Projects Status</strong>
					</div>
					<div class="card-body">
						<div class="row">

							<div class="col-sm-12">
								<div class="row">

									<div class="col-sm-3">
										<div class="callout callout-danger">
											<small class="text-muted">To Do Projects </small> <br> <strong
												class="h4">${pending }</strong>
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


									<div class="col-sm-3">
										<div class="callout callout-primary">
											<small class="text-muted">Active Projects</small> <br> <strong
												class="h4">${working}</strong>
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



									<div class="col-sm-3">
										<div class="callout callout-success">
											<small class="text-muted">Completed Projects</small> <br>
											<strong class="h4">${complete }</strong>
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
									
									<div class="col-sm-3">
										<div class="callout callout-warning">
											<small class="text-muted">Over Due Projects</small> <br>
											<strong class="h4">${overdue }</strong>
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


								</div>

								<hr class="mt-0">
								<ul class="horizontal-bars type-2">


									<li class="my-2"><span class="badge badge-danger"
										style="width: 50px;">To Do</span> <span class="value">
											<span class="text-muted small">${proToDo}%</span>
									</span>
										<div class="bars">
											<div class="progress progress-xs">
												<div class="progress-bar bg-danger" role="progressbar"
													style="width: ${proToDo}%" aria-valuenow="22.0"
													aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div></li>
									<li class="my-2"><span class="badge badge-info"
										style="width: 50px;">Active</span> <span class="value">
											<span class="text-muted small">${proWorking }%</span>
									</span>
										<div class="bars">
											<div class="progress progress-xs">
												<div class="progress-bar bg-primary" role="progressbar"
													style="width: ${proWorking}%" aria-valuenow="5.0"
													aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div></li>





									<li class="my-2"><span class="badge badge-success"
										style="width: 50px;">Completed!</span> <span class="value">
											<span class="text-muted small">${proComplete }%</span>
									</span>
										<div class="bars">
											<div class="progress progress-xs">
												<div class="progress-bar bg-success" role="progressbar"
													style="width: ${proComplete}%"
													aria-valuenow="${proComplete }" aria-valuemin="0"
													aria-valuemax="100"></div>
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
											<p class="text-muted mb-0 text-right">${project.proProg }%</p>
											<div class="progress progress-xs mb-3">

												<div class="progress-bar bg-danger role="
													progressbar" style="width: ${project.proProg}%"
													aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>

											</div>
											<small class="text-muted">Due Date : ${project.pEndDate}</small>
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
