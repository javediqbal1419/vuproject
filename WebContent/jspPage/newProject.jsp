<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.vu.dao.NewProjectDao" import="java.util.*"
	import="com.vu.bo.User" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<jsp:include page="home.jsp"/>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
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
<title>New Project</title>

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
	<div class="container animated fadeIn">
		<div class="row justify-content-center">
			<div class="col-8">
				<div class="card-group">
					<div class="card p-4 mb-5">
						<div class="card-body">

							<input type='hidden' name='' value='' />
							<h1>New Project</h1>
							<p class="text-muted">Create your projects here</p>



							<div class="form-group">
								<label class="col-form-label">Project Name</label>
								<div class="input-group">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fa fa-user"></i></span>
									</div>

									<input type="text" name="projectName" id="projectName"
										maxlength="80" class="form-control" placeholder="Project Name"
										required />

								</div>
							</div>
							<div class="form-group">
								<label class="col-form-label">User. <i>Crtl + click
										for multiple selection</i></label>
								<div class="input-group">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fa fa-users"></i></span>
									</div>
									<select id="userName" name="userName" class="form-control"
										multiple="multiple">

										<c:forEach items="${userList}" var="user" varStatus="countST">
											<option value="${user.id}"><c:out
													value="${user.name}"></c:out></option>
										</c:forEach>

									</select>

								</div>
							</div>
							<div class="form-group">
								<label class="col-form-label">Total Hours</label>
								<div class="input-group">
									<div class="input-group-append">
										<span class="input-group-text"><i
											class="fa fa-calculator"></i></span>
									</div>
									<input type="text" name="hours" id="hours" class="form-control"
										placeholder="Total Hours Required" />

								</div>
							</div>
							<div class="form-group">
								<label class="col-form-label">Status</label>
								<div class="input-group">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fa fa-circle"></i></span>
									</div>
									<select name="status" class="form-control" placeholder="Status"
										id="status">
										<option value="1">New Project</option>

										<option value="2">Existing Project</option>

									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-form-label">Start Date</label>
								<div class="input-group">
									<div class="input-group-append">
										<span class="input-group-text"><i
											class="fa fa-calendar-alt"></i></span>
									</div>
									<input type="date" name="startDate" id="startDate"
										class="form-control" placeholder="Enter Start Date" />
								</div>
								


							</div>
							<div class="form-group">
								<label class="col-form-label">End Date</label>
								<div class="input-group">
									<div class="input-group-append">
										<span class="input-group-text"><i
											class="fa fa-calendar-alt"></i></span>
									</div>
									<input type="date" name="endDate" id="endDate"
										class="form-control" placeholder="Enter End Date" />
								</div>


							</div>
							<div class="form-group">
								<label class="col-form-label">Description</label>
								<div class="input-group">
									<div class="input-group-append">
										<span class="input-group-text"><i
											class="fa fa-quote-left"></i></span>
									</div>
									<textarea name="desp" id="desp" cols="40" rows="3"
										class="form-control"
										placeholder="Type here the project description...">
</textarea>
								</div>


							</div>

							<div class="">
								<button type="button" class="btn btn-sm btn-success"
									onclick="updateProject()">
									<i class="fa fa-dot-circle-o"></i> Submit
								</button>
								<button type="reset" class="btn btn-sm btn-danger">
									<i class="fa fa-ban"></i> Reset
								</button>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	function updateProject() {
		
		$.ajax({
		type: "POST",
		url: "<%=request.getContextPath()%>/new-project",
				data : {

					projectName : $("#projectName").val(),
					userName : $("#userName").val().join(","),
					hours : $("#hours").val(),
					startDate : $("#startDate").val(),
					endDate : $("#endDate").val(),
					desp : $("#desp").val(),
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
	</script>