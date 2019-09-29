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

								<input type='hidden' name='csrfmiddlewaretoken'
									value='m40yEmZWxUCOw87ZqJbM9biB5WHPY5j1tjg45PaEOoluJ6dje0mfYxcToK1HWAZ3' />
								<h1>Users</h1>
								<p class="text-muted">Create users here</p>
								<form action="newUser" method="post">
									<input type='hidden' name=''
										value='' />
									<div class="form-group">
										<div class="input-group">
											<input type="text" name="username" maxlength="150" autofocus
												class="form-control" placeholder="Username" required
												id="id_username" />
											<div class="input-group-append">
												<span class="input-group-text"><i class="fa fa-user"></i></span>
											</div>

										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<input type="text" name="first_name" maxlength="30"
												class="form-control" placeholder="First name"
												id="id_first_name" />
											<div class="input-group-append">
												<span class="input-group-text"><i class="fa fa-user"></i></span>
											</div>

										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<input type="text" name="last_name" maxlength="150"
												class="form-control" placeholder="Last name"
												id="id_last_name" />
											<div class="input-group-append">
												<span class="input-group-text"><i class="fa fa-user"></i></span>
											</div>

										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<input type="email" name="email" class="form-control"
												placeholder="E-mail" required id="id_email" />
											<div class="input-group-append">
												<span class="input-group-text"><i
													class="fa fa-envelope"></i></span>
											</div>

										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<input type="password" name="password1" class="form-control"
												placeholder="Password" required id="id_password1" />
											<div class="input-group-append">
												<span class="input-group-text"><i class="fa fa-key"></i></span>
											</div>

										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<input type="password" name="password2" class="form-control"
												placeholder="Retype Password" required id="id_password2" />
											<div class="input-group-append">
												<span class="input-group-text"><i class="fa fa-key"></i></span>
											</div>

										</div>

									</div>
									<div class="form-group">
										<div class="input-group">
											<select name="roleId" class="form-control" required
												id="id_company">
												<option value="" selected>---------</option>



											</select>
											<div class="input-group-append">
												<span class="input-group-text"><i
													class="fa fa-industry"></i></span>
											</div>

										</div>
									</div>

									<div class="">
										<button type="submit" class="btn btn-sm btn-success">
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