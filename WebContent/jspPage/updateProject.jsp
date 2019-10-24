<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.vu.dao.NewProjectDao" import="java.util.*"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/mycss/mcss.css" type="text/css">
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
<title>Task View</title>

<!-- Icons -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/all.css"
	integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
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
					<div class="card-body">
						<div class="row">
							<c:forEach items="${projectview}" var="project"
								varStatus="countST">

								<div class="col-12 col-md-6 col-lg-4">
									<div class="card mx-2">
										<div class="card-body">



											<div class="smallbox" align="right">




												<button type="button" data-whatever="${project.projectId }"
													class="btn btn-link text-right lead text-danger"
													data-toggle="modal" data-target="#exampleModal">
													
													${project.p_status }</button>
													<input type="hidden" id ="projectId${project.projectId }">




											</div>

											<div class="h4 m-0">${project.projectName }</div>


											<div>
												<div>${project.descp }</div>
											</div>
											<p class="text-muted mb-0 text-right">50.0%</p>
											<div class="progress progress-xs mb-3">

												<div class="progress-bar bg-danger role="
													progressbar" style="width: 100.0%" aria-valuenow="25"
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
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Change Project
						Status</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				<div class="form-group">
				    <label for="exampleFormControlInput1">project Id</label>
				    <input type="text" class="form-control" id="projectId" readonly="readonly">
				    
				  </div>
					<div class="form-group">
						<label for="exampleFormControlSelect1">select project
							status</label> <select class="form-control" id="projectStatus"
							name="projectStatus">
							<c:forEach items="${projectStatus}" var="status"
								varStatus="countST">


								<option value="${status.id }">${status.title}</option>

							</c:forEach>
							
						</select>
						
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary"
						onclick="updateProject()">Save changes</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
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
<script>
	function updateProject() {
		
		$.ajax({
		type: "POST",
		url: "<%=request.getContextPath()%>/UpdateProjectStatusServlet",
				data : {

					projectStatus : $("#projectStatus").val(),
					projectId : $("#projectId").val(),
				},
				dataType : "json",
				success : updateSuccess(),
				error : function() {

				}
			});

		}
		function updateSuccess() {
			window.location.replace("<%=request.getContextPath()%>/jspPage/welcome.jsp");

	}
		$('#exampleModal').on('show.bs.modal', function (event) {
			  var button = $(event.relatedTarget) // Button that triggered the modal
			  var recipient = button.data('whatever') // Extract info from data-* attributes
			  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
			  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
			  var modal = $(this)
			  modal.find('.modal-title').text('Current Project ID is : ' + recipient)
			  modal.find('.modal-body input').val(recipient)
			})
</script>

</html>
