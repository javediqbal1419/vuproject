<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.vu.dao.UpdateDao" import="java.util.*"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/mycss/mycss.css" type="text/css">
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
<title>Update Task</title>

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
				<li class="breadcrumb-item">Update</li>
				<li class="breadcrumb-item active">Update Task</li>
			</ol>

			<div class="col-md-12">
				<div class="card">
					<div class="card-body">
						<div class="row">

							<c:forEach items="${uTaskList}" var="task" varStatus="countST">

								<div class="col-12 col-md-6 col-lg-4">
									<div class="card mx-2">
										<div class="card-body">

											<div class="smallbox" align="right">

												<button type="button" data-whatever="${task.taskId }"
													class="btn btn-link text-right lead text-danger"
													data-toggle="modal" data-target="#exampleModal">

													${task.status }</button>
												<input type="hidden" id="taskId${task.taskId }">
											</div>

											<div class="h4 m-0">${task.taskName }</div>

											<div>${task.projectName }</div>



											<div>
												<p class="text-muted mb-0 text-right">${task.taskPercent}</p>
												<button  class="perbtn_m" type="button" id="less">-</button>

												<progress class="progressbar" name="taskpercent"
													id="taskpercent" max="90" value="${task.taskPercent}"></progress>


												<button class ="perbtn_p" type="button" id="more">+</button>
											</div>



											<small class="text-muted"> ${task.name } </small>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<br>
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
					<h5 class="modal-title" id="exampleModalLabel">Change Task
						Status</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				<div class="form-group">
				    <label for="exampleFormControlInput1">Task Id</label>
				    <input type="text" class="form-control" id="taskId" readonly="readonly">
				    
				  </div>
					<div class="form-group">
						<label for="exampleFormControlSelect1">select task
							status</label> <select class="form-control" id="taskStatus"
							name="taskStatus">
							<c:forEach items="${taskStatus}" var="status"
								varStatus="countST">


								<option value="${status.taskId }">${status.taskTitle}</option>

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

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script>
		$('#more').on('click', function() {
			$('progress').val($('progress').val() + 10);
			return false;
		});
		$('#less').on('click', function() {
			$('progress').val($('progress').val() - 10);
			return false;
		});
	</script>
<script>
	function updateProject() {
		
		$.ajax({
		type: "POST",
		url: "<%=request.getContextPath()%>/UpdateTaskStatusServlet",
				data : {

					taskStatus : $("#taskStatus").val(),
					taskId : $("#tasktId").val(),
					taskpercent: $("#taskpercent").val,
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


</body>

</html>
