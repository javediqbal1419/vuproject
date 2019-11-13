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

											<div class="col-md-6">

												<div class="slidecontainer">
												<p>Value: <span id="value"></span></p>
													<input type="range" min="1" max="100" value="${task.taskPercent }" 
														class="slider" id="${task.taskId }"
														onchange="showVal(this.value,this.id)">
												</div>
												<span id="valBox" ></span>
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
						<label for="exampleFormControlInput1">Task Id</label> <input
							type="text" class="form-control" id="taskId" readonly="readonly">

					</div>
					<div class="form-group">
						<label for="exampleFormControlSelect1">select task status
						</label> <select class="form-control" id="taskStatus" name="taskStatus">
							<c:forEach items="${taskStatus}" var="status" varStatus="countST">

								<option value="${status.taskId }">${status.taskTitle}</option>

							</c:forEach>

						</select>

					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary"
						onclick="updateTask()">Save changes</button>
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
	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script>
	
	var slider = document.getElementById("myRange");
	var output = document.getElementById("valBox");
	output.innerHTML = slider.value;
	slider.oninput = function() {
		  output.innerHTML = this.value;
		}
function showVal(newVal,selectedId){
  document.getElementById("valBox").innerHTML=newVal;
  alert(selectedId)
  

      $.ajax({
          type: "POST",
          url: "<%=request.getContextPath()%>/UpdateTaskStatusServlet",
          data: {

        	  taskProgress: newVal,
        	  taskId: selectedId,
          },
          dataType: "json",
          success: updateSuccess(),
          error: function() {

          }
      });

  

// send ajax call to update value in db by selectedId
}
</script>
	<script>
        function updateTask() {

            $.ajax({
                type: "POST",
                url: "<%=request.getContextPath()%>/UpdateTaskStatusServlet",
                data: {

                    taskStatus: $("#taskStatus").val(),
                    taskId: $("#tasktId").val(),
                    taskpercent: $("#taskpercent").val,
                },
                dataType: "json",
                success: updateSuccess(),
                error: function() {

                }
            });

        }

        function updateSuccess() {
        	alert("in updatesuccess method");
            window.location.replace("<%=request.getContextPath()%>/jspPage/welcome.jsp");

		}
		$('#exampleModal').on(
				'show.bs.modal',
				function(event) {
					var button = $(event.relatedTarget) // Button that triggered the modal
					var recipient = button.data('whatever') // Extract info from data-* attributes
					// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
					// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
					var modal = $(this)
					modal.find('.modal-title').text(
							'Current Task ID is : ' + recipient)
					modal.find('.modal-body input').val(recipient)
				})

	</script>

</body>

</html>