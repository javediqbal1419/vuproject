<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
  <meta name="author" content="Łukasz Holeczek">
  <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,Angular 2,Angular4,Angular 4,jQuery,CSS,HTML,RWD,Dashboard,React,React.js,Vue,Vue.js">
  <meta name="google-site-verification" content="83fcqoPn-YTkXathQiicW-x3U2RWZh4PaPUzk91wtjY" />
  <title>Project Manager - Gui</title>

  <!-- Icons -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1" crossorigin="anonymous">
  <link href="https://gui-projects.s3.amazonaws.com/static/core/css/simple-line-icons.min.css" rel="stylesheet">

  <!-- Main styles for this application -->
  <link href="https://gui-projects.s3.amazonaws.com/static/core/css/estilo.css" rel="stylesheet">
  <link href="https://gui-projects.s3.amazonaws.com/static/core/css/style.css" rel="stylesheet">

</head>

<body class="app flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card-group">
                    <div class="card p-4">
                        <div class="card-body">
                            <form method="post" action="login">
                                <input type='hidden' name='csrfmiddlewaretoken' value='k5oRHWBfuKVbsDa7VSACViksx9tzQQ5dxKV5wGFPzzwWkNXgwgNyIAB1qZJHIFuh' />
                                <h1>Login</h1>
                                <p class="text-muted">Sign In to your account</p>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                                    </div>
                                    <input type="text"
                                       class="form-control"
                                       name="name"
                                       placeholder="Username"
                                       id="name"
                                       
                                       maxlength="254"
                                       required>
                                </div>
                                <div class="input-group mb-4">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-asterisk"></i></span>
                                    </div>
                                    <input type="password"
                                       class="form-control"
                                       name="password"
                                       placeholder="Password"
                                       id="password"
                                       
                                       maxlength="254"
                                       required>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <button type="submit" class="btn btn-primary px-4">Login</button>
                                    </div>
                                    <div class="col-6 text-right">
                                        <button type="button" class="btn btn-link px-0">Forgot password?</button>
                                    </div>
                                    
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="card text-white bg-primary py-5">
                        <div class="card-body text-center">
                            <div>
                                <h2>Sign up</h2>
                                <p class="mt-4">Register now, it's free.</p>
                                <a href="/register/welcome.jsp" class="btn btn-primary active mt-3">Register Now!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

  <!-- Bootstrap and necessary plugins -->
    <script src="https://gui-projects.s3.amazonaws.com/static/core/vendors/js/jquery.min.js"></script>
    <script src="https://gui-projects.s3.amazonaws.com/static/core/vendors/js/popper.min.js"></script>
    <script src="https://gui-projects.s3.amazonaws.com/static/core/vendors/js/bootstrap.min.js"></script>
    <script src="https://gui-projects.s3.amazonaws.com/static/core/vendors/js/pace.min.js"></script>
    <script src="https://gui-projects.s3.amazonaws.com/static/core/vendors/js/Chart.min.js"></script>

  <!-- CoreUI main scripts -->

    <script src="https://gui-projects.s3.amazonaws.com/static/core/js/app.js"></script>

  <!-- Plugins and scripts required by this views -->

  <!-- Custom scripts required by this view -->
    <script src="https://gui-projects.s3.amazonaws.com/static/core/js/main.js"></script>

</body>


</html>
