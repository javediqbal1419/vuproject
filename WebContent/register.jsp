<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
  <meta name="author" content="Łukasz Holeczek">
  <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,Angular 2,Angular4,Angular 4,jQuery,CSS,HTML,RWD,Dashboard,React,React.js,Vue,Vue.js">
  <meta name="google-site-verification" content="83fcqoPn-YTkXathQiicW-x3U2RWZh4PaPUzk91wtjY" />
  <title>Registeration Form</title>

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
    <img src="https://gui-projects.s3.amazonaws.com/static/core/img/logos/gui-horizontal.png" alt="" class="brand-gui ml-2 d-none d-sm-block p-2">
    <button class="navbar-toggler sidebar-toggler d-md-down-none" type="button">
      <span class="navbar-toggler-icon"></span>
    </button>

    <ul class="nav navbar-nav d-md-down-none">
      <li class="nav-item px-3">
        <a class="nav-link" href="/">Home</a>
      </li>
      <li class="nav-item px-3">
        <a class="nav-link" href="/dashboard/">Dashboard</a>
      </li>
      <!--<li class="nav-item px-3">-->
        <!--<a class="nav-link" href="#">Settings</a>-->
      <!--</li>-->
    </ul>
    <ul class="nav navbar-nav ml-auto">
      <li class="nav-item d-md-down-none">
        <a class="nav-link" href="#"><i class="fa fa-bell"></i><span class="badge badge-pill badge-danger"></span></a>
      </li>
      <li class="nav-item d-md-down-none">
        <a class="nav-link" href="#"><i class="fa fa-list"></i></a>
      </li>
      <li class="nav-item d-md-down-none">
        <a class="nav-link" href="#"><i class="fa fa-map-marker"></i></a>
      </li>
      
      <li class="text-muted">
        <a href="/login/">sign in</a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
          
          <img src="https://gui-projects.s3.amazonaws.com/static/core/img/avatar/blank_profile.png" class="img-avatar" alt="AnonymousUser">
          
        </a>
        <div class="dropdown-menu dropdown-menu-right">
          <div class="dropdown-header text-center">
            <strong>Account</strong>
          </div>
          
          <a class="dropdown-item" href="/login/"><i class="fa fa-user"></i> Login</a>
          
        </div>
      </li>
    </ul>
    <button class="navbar-toggler aside-menu-toggler" type="button">
      <span class="navbar-toggler-icon"></span>
    </button>

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
                <a class="nav-link" href="/register/users/"><i class="fa fa-user ml-2"></i> Users Views</a>
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
            <a class="nav-link nav-dropdown-toggle" href="#"><i class="fa fa-industry"></i> Company</a>
            <ul class="nav-dropdown-items">
              <li class="nav-item">
                <a class="nav-link" href="/register/new-company/"><i class="fa fa-plus ml-2"></i> New Company</a>
              </li>
            </ul>
          </li>
          <li class="nav-item nav-dropdown">
            <a class="nav-link nav-dropdown-toggle" href="#"><i class="fa fa-puzzle-piece"></i> Projects</a>
            <ul class="nav-dropdown-items">
              <li class="nav-item">
                <a class="nav-link" href="/projects/new-project/"><i class="fa fa-plus ml-2"></i> New Project</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/projects/new-task/"><i class="fa fa-plus ml-2"></i> New Task</a>
              </li>
            </ul>
          </li>
          <li class="nav-item nav-dropdown">
            <a class="nav-link nav-dropdown-toggle" href="#"><i class="fa fa-user"></i> Users</a>
            <ul class="nav-dropdown-items">
              <li class="nav-item">
                <a class="nav-link" href="/register/new-user/"><i class="fa fa-user-plus ml-2"></i> Create New User</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/register/users/friends/"><i class="fa fa-users ml-2"></i> Friends</a>
              </li>
            </ul>
          </li>
          <li class="divider"></li>
          <li class="nav-title">
            Extras
          </li>
          <li class="nav-item nav-dropdown">
            <a class="nav-link nav-dropdown-toggle" href="#"><i class="fa fa-star"></i> Pages</a>
            <ul class="nav-dropdown-items">
              <li class="nav-item">
                <a class="nav-link" href="/login/" target="_top"><i class="fa fa-sign-in"></i> Login</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/logout/" target="_top"><i class="fa fa-sign-out"></i> Logout</a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <button class="sidebar-minimizer brand-minimizer" type="button"></button>
    </div>

    <!-- Main content -->
    <main class="main">
      <!-- Breadcrumb -->
      <ol class="breadcrumb">
        
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">Users</li>
        <li class="breadcrumb-item active">Create New User</li>


        <!-- Breadcrumb Menu-->
        <li class="breadcrumb-menu d-md-down-none">
          <div class="btn-group" role="group" aria-label="Button group">
            <a class="btn" href="#"><i class="fa fa-comments"></i></a>
            <a class="btn" href="./"><i class="fa fa-tachometer-alt"></i> &nbsp;Dashboard</a>
            <a class="btn" href="#"><i class="fa fa-cog"></i> &nbsp;Settings</a>
          </div>
        </li>
      </ol>

<div class="container animated fadeIn">
        <div class="row justify-content-center">
            <div class="col-6">
                <div class="card-group">
                    <div class="card p-4 mb-5">
                        <div class="card-body">
                            
                                <input type='hidden' name='csrfmiddlewaretoken' value='wh3P2r4UUfxE8ClYB4Vpqzi5U3OGpf1FDwjltUfCbJgklAripl6SfVcndR8ynKHH' />
                                <h1>Users</h1>
                                <p class="text-muted">Create users here</p>
                    <form action="" method="post">
                        <input type='hidden' name='csrfmiddlewaretoken' value='wh3P2r4UUfxE8ClYB4Vpqzi5U3OGpf1FDwjltUfCbJgklAripl6SfVcndR8ynKHH' />
                        <div class="form-group">
                            <div class="input-group">
                                <input type="text" name="username" maxlength="150" autofocus class="form-control" placeholder="Username" required id="id_username" />
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fa fa-user"></i></span>
                                </div>
                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <input type="text" name="first_name" maxlength="30" class="form-control" placeholder="First name" id="id_first_name" />
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fa fa-user"></i></span>
                                </div>
                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <input type="text" name="last_name" maxlength="150" class="form-control" placeholder="Last name" id="id_last_name" />
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fa fa-user"></i></span>
                                </div>
                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <input type="email" name="email" class="form-control" placeholder="E-mail" required id="id_email" />
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                                </div>
                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <input type="password" name="password1" class="form-control" placeholder="Password" required id="id_password1" />
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fa fa-key"></i></span>
                                </div>
                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <input type="password" name="password2" class="form-control" placeholder="Retype Password" required id="id_password2" />
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fa fa-key"></i></span>
                                </div>

                            </div>
                            
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <select name="company" class="form-control" required id="id_company">
  <option value="" selected>---------</option>

  <option value="17">a</option>

  <option value="75">a</option>

  <option value="83">a</option>

  <option value="10">aa</option>

  <option value="76">AA</option>

  <option value="13">ADT Enterprise</option>

  <option value="15">ALEX ROY</option>

  <option value="23">arfga</option>

  <option value="19">asas</option>

  <option value="67">Cartography</option>

  <option value="28">company 1</option>

  <option value="4">Dev Co</option>

  <option value="26">dfgdfg</option>

  <option value="65">Eliaran design</option>

  <option value="5">Emptech</option>

  <option value="73">Eri</option>

  <option value="64">Estate Robot</option>

  <option value="3">Fábrica de Móveis</option>

  <option value="16">Foss Workshop</option>

  <option value="11">gfdgfd</option>

  <option value="74">google</option>

  <option value="80">Haj</option>

  <option value="81">Haj</option>

  <option value="27">hgfghfghf</option>

  <option value="24">IBM</option>

  <option value="84">Jigme</option>

  <option value="79">Me</option>

  <option value="21">odoo_DB</option>

  <option value="1">Oficina Brasil</option>

  <option value="2">Padaria Francana</option>

  <option value="61">Pasargad Electronic Payment</option>

  <option value="62">peyote</option>

  <option value="72">Proalco</option>

  <option value="14">Ronak Patel</option>

  <option value="6">s</option>

  <option value="69">SA</option>

  <option value="66">san</option>

  <option value="12">Song</option>

  <option value="82">superadmin</option>

  <option value="7">Tanisha Leon</option>

  <option value="63">test</option>

  <option value="22">test</option>

  <option value="71">test</option>

  <option value="18">Test</option>

  <option value="70">Test</option>

  <option value="20">tyu</option>

  <option value="68">val</option>

  <option value="25">WSHM</option>

  <option value="77">xxxx</option>

  <option value="78">YYYY</option>

  <option value="8">Zero Carbo</option>

  <option value="9">zhonghangruodian</option>

</select>
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fa fa-industry"></i></span>
                                </div>
                                
                            </div>
                        </div>

                        <div class="">
                            <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-dot-circle-o"></i> Submit1</button>
                            <button type="reset" class="btn btn-sm btn-danger"><i class="fa fa-ban"></i> Reset</button>
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
        <div class="tab-pane active" id="timeline" role="tabpanel">
          
          <div class="callout m-0 py-2 text-muted text-center bg-light text-uppercase">
            <small><b>Suggested Friends</b></small>
          </div>
          <div class="callout callout-success m-0 py-3">
            <div>
              <strong></strong></div>

            <small class="text-muted text-truncate">Log in to see your Friends Suggested List</small>
            <a href="/login/" class="badge badge-success text-white">Log in</a>
          </div>
          
        </div>


        <div class="tab-pane p-3" id="messages" role="tabpanel">
          <div class="message">
            <div class="py-3 pb-5 mr-3 float-left">
              <div class="avatar">
                <img src="" class="img-avatar" alt="person_name">
                <span class="avatar-status badge-success"></span>
              </div>
            </div>
            <div>
              <small class="text-muted">Person Name</small>
              <small class="text-muted float-right mt-1">1:52 PM</small>
            </div>
            <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
            <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
          </div>
        </div>



        <div class="tab-pane p-3" id="settings" role="tabpanel">
          <h6>Settings</h6>

          <div class="aside-options">
            <div class="clearfix mt-4">
              <small><b>Option 1</b></small>
              <label class="switch switch-text switch-pill switch-success switch-sm float-right">
                <input type="checkbox" class="switch-input" checked="">
                <span class="switch-label" data-on="On" data-off="Off"></span>
                <span class="switch-handle"></span>
              </label>
            </div>
            <div>
              <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</small>
            </div>
          </div>

          <div class="aside-options">
            <div class="clearfix mt-3">
              <small><b>Option 2</b></small>
              <label class="switch switch-text switch-pill switch-success switch-sm float-right">
                <input type="checkbox" class="switch-input">
                <span class="switch-label" data-on="On" data-off="Off"></span>
                <span class="switch-handle"></span>
              </label>
            </div>
            <div>
              <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</small>
            </div>
          </div>

          <div class="aside-options">
            <div class="clearfix mt-3">
              <small><b>Option 3</b></small>
              <label class="switch switch-text switch-pill switch-success switch-sm float-right">
                <input type="checkbox" class="switch-input">
                <span class="switch-label" data-on="On" data-off="Off"></span>
                <span class="switch-handle"></span>
              </label>
            </div>
          </div>

          <div class="aside-options">
            <div class="clearfix mt-3">
              <small><b>Option 4</b></small>
              <label class="switch switch-text switch-pill switch-success switch-sm float-right">
                <input type="checkbox" class="switch-input" checked="">
                <span class="switch-label" data-on="On" data-off="Off"></span>
                <span class="switch-handle"></span>
              </label>
            </div>
          </div>

          <hr>
          <h6>System Utilization</h6>

          <div class="text-uppercase mb-1 mt-4">
            <small><b>CPU Usage</b></small>
          </div>
          <div class="progress progress-xs">
            <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
          </div>
          <small class="text-muted">348 Processes. 1/4 Cores.</small>

          <div class="text-uppercase mb-1 mt-2">
            <small><b>Memory Usage</b></small>
          </div>
          <div class="progress progress-xs">
            <div class="progress-bar bg-warning" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
          </div>
          <small class="text-muted">11444GB/16384MB</small>

          <div class="text-uppercase mb-1 mt-2">
            <small><b>SSD 1 Usage</b></small>
          </div>
          <div class="progress progress-xs">
            <div class="progress-bar bg-danger" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
          </div>
          <small class="text-muted">243GB/256GB</small>

          <div class="text-uppercase mb-1 mt-2">
            <small><b>SSD 2 Usage</b></small>
          </div>
          <div class="progress progress-xs">
            <div class="progress-bar bg-success" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
          </div>
          <small class="text-muted">25GB/256GB</small>
        </div>
      </div>
    </aside>

  </div>

  <footer class="app-footer">
    <span><a href="http://coreui.io">Copyright</a> © 2019 | Project Management  Developed by Javed.</span>
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

</html>