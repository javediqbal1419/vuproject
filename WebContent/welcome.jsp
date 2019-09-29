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
  <title>Project Manager</title>

  <!-- Icons -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1" crossorigin="anonymous">
  <link href="https://gui-projects.s3.amazonaws.com/static/core/css/simple-line-icons.min.css" rel="stylesheet">

  <!-- Main styles for this application -->
  <link href="https://gui-projects.s3.amazonaws.com/static/core/css/estilo.css" rel="stylesheet">
  <link href="https://gui-projects.s3.amazonaws.com/static/core/css/style.css" rel="stylesheet">

</head>

<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">

  <header class="app-header navbar">
    <button class="navbar-toggler mobile-sidebar-toggler d-lg-none mr-auto" type="button">
      <span class="navbar-toggler-icon"></span>
    </button>
    <img src="E:\project\vuproject\WebContent\img\concavetech.png" height ="50px" width="50px"alt="" class="brand-gui ml-2 d-none d-sm-block p-2">
    <button class="navbar-toggler sidebar-toggler d-md-down-none" type="button">
      <span class="navbar-toggler-icon"></span>
    </button>
    <ul class="nav navbar-nav ml-auto">
 
     
  
      
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
          
          <img src="https://gui-projects.s3.amazonaws.com/static/core/img/avatar/blank_profile.png" class="img-avatar" alt="AnonymousUser">
          
        </a>
        <div class="dropdown-menu dropdown-menu-right">
          
          <a class="dropdown-item" href="/login/"><i class="fa fa-user"></i> Logout</a>
          
        </div>
      </li>
    </ul>

  </header>

  <div class="app-body">
    <div class="sidebar">
      <nav class="sidebar-nav">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="/"><i class="fa fa-home"></i> Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/dashboard/"><i class="fa fa-tachometer-alt"></i> Dashboard</a>
          </li>
          <li class="nav-item nav-dropdown">
            <a class="nav-link nav-dropdown-toggle" href="#"><i class="fa fa-tachometer-alt"></i> Views</a>
            <ul class="nav-dropdown-items">
              <li class="nav-item">
                <a class="nav-link" href="/projects/"><i class="fa fa-paper-plane ml-2"></i> Project's View</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/register/users/"><i class="fa fa-user ml-2"></i> User`s Views</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/register/users/"><i class="fa fa-user ml-2"></i> Task`s Views</a>
              </li>
            </ul>
          </li>

          <!--<li class="nav-title">-->
            <!--Theme-->
          <!--</li>-->
          <!--<li class="nav-item">-->
            <!--<a href="colors.html" class="nav-link"><i class="fa fa-tint"></i> Colors</a>-->
          <!--</li>-->
          <!--<li class="nav-item">-->
            <!--<a href="typography.html" class="nav-link"><i class="fa fa-user"></i> Typograhy</a>-->
          <!--</li>-->
          <li class="nav-title">
            Register
          </li>
          <li class="nav-item nav-dropdown">
            <a class="nav-link nav-dropdown-toggle" href="#"><i class="fa fa-puzzle-piece"></i> Projects</a>
            <ul class="nav-dropdown-items">
              <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath() %>/new-project"><i class="fa fa-plus ml-2"></i> New Project</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath() %>/NewTask"><i class="fa fa-plus ml-2"></i> New Task</a>
              </li>
            </ul>
          </li>
          <li class="nav-item nav-dropdown">
            <a class="nav-link nav-dropdown-toggle" href="#"><i class="fa fa-user"></i> Users</a>
            <ul class="nav-dropdown-items">
              <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath() %>/login.jsp"><i class="fa fa-user-plus ml-2"></i> Create New User</a>
              </li>
            </ul>
          </li>
          <li class="divider"></li>

         </ul>
      </nav>
      <button class="sidebar-minimizer brand-minimizer" type="button"></button>
    </div>

    <!-- Main content -->
    <main class="main">
      <!-- Breadcrumb -->
 




    </main>

    <aside class="aside-menu">
      <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" data-toggle="tab" href="#timeline" role="tab"><i class="fa fa-list"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="tab" href="#messages" role="tab"><i class="fa fa-comments"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="tab" href="#settings" role="tab"><i class="fa fa-cog"></i></a>
        </li>
      </ul>

      <!-- Tab panes -->
      <div class="tab-content">
        
      </div>
    </aside>

  </div>

  <footer class="app-footer">
    <span><a href="https://javediqbal1419.netlify.com/">Copyright</a> © 2019 | Project Manager (PMAN)  Developed by Javed.</span>
    <!--<span class="ml-auto">Powered by <a href="http://coreui.io">CoreUI</a></span>-->
  </footer>

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
