<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.vu.dao.NewProjectDao" import="java.util.*"
	import="com.vu.bo.User" pageEncoding="ISO-8859-1"%>
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
<title>New User</title>

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
		<div class="container animated fadeIn">
			<div class="row justify-content-center">
				<div class="col-6">
					<div class="card-group">
						<div class="card p-4 mb-5">
							<div class="card-body">

								<input type='hidden' name='' value='3' />
								<h1>Users</h1>
								<p class="text-muted">Create users here</p>
								<form action="SignUpServlet" method="post">
									<input type='hidden' name='' value='' />
									<div class="form-group">
										<div class="input-group">
											<input type="text" name="user" maxlength="150" autofocus
												class="form-control" placeholder="Username" required
												id="user" />
											<div class="input-group-append">
												<span class="input-group-text"><i class="fa fa-user"></i></span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<input type="text" name="firstName" maxlength="30"
												class="form-control" placeholder="First name" id="firstName" />
											<div class="input-group-append">
												<span class="input-group-text"><i class="fa fa-user"></i></span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<input type="text" name="lastName" maxlength="150"
												class="form-control" placeholder="Last name" id="lastName" />
											<div class="input-group-append">
												<span class="input-group-text"><i class="fa fa-user"></i></span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<input type="email" name="email" class="form-control"
												placeholder="E-mail" required id="email" />
											<div class="input-group-append">
												<span class="input-group-text"><i
													class="fa fa-envelope"></i></span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<input type="password" name="pass1" id="pass1"
												class="form-control" placeholder="Password" required />
											<div class="input-group-append">
												<span class="input-group-text"><i class="fa fa-key"></i></span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<input type="password" name="pass" id="pass2"
												class="form-control" placeholder="Retype Password" required />
											<div class="input-group-append">
												<span class="input-group-text"><i class="fa fa-key"></i></span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-form-label">Project Role</label>
										<div class="input-group">
											<select id="userRole" name="userRole" class="form-control">
												<c:forEach items="${userRole}" var="user"
													varStatus="countST">
													<option value="${user.roleId}">
													<c:out value="${user.role}"></c:out>
													</option>
												</c:forEach>
											</select>
											<div class="input-group-append">
												<span class="input-group-text"><i
													class="fa fa-puzzle-piece"></i></span>
											</div>
										</div>
									</div>
									<div>
										<button type="submit" class="btn btn-sm btn-success"
											onclick="updateUser()">
											<i class="fa fa-dot-circle-o"></i> Submit
										</button>
										<button type="reset" class="btn btn-sm btn-danger">
											<i class="fa fa-ban"></i> Reset
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</main>
		<aside class="aside-menu">
			<ul class="nav nav-tabs" role="tablist">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#timeline" role="tab"><i
						class="fa fa-list"></i></a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#messages" role="tab"><i class="fa fa-comments"></i></a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#settings" role="tab"><i class="fa fa-cog"></i></a></li>
			</ul>

		</aside>

	</div>
</body>
</html>
<script>
		function updateUser() {
		
		$.ajax({
		type: "POST",
		url: "<%=request.getContextPath()%>/SignUpServlet",
				data : {

					user : $("#user").val(),
					firstName : $("#firstName").val(),
					lastName: $("#lastName").val(),
					email: $("#email").val(),
					pass1 : $("#pass1").val(),
					userRole : $("#userRole").val(),
				},
				dataType : "json",
				success : updateSuccess(),
				error : function() {

				}
			});

		}
		function updateSuccess() {
			window.location.replace("<%=request.getContextPath()%>/login.jsp");

	}
</script>
<script type="text/javascript">
	function matchpass() {
		var x = document.getElementById("pass1").value;
		var y = document.getElementById("pass2").value;

		if (x != y) {
			alert("password not match");
		}
	}
</script>
<<script type="text/javascript">
function myFunction(){ matchpass(); updateUser(); }
</script>