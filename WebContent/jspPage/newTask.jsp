<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.vu.dao.NewProjectDao" import="java.util.*"
	pageEncoding="ISO-8859-1"%>
	<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
  <meta name="author" content="Łukasz Holeczek">
  <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,Angular 2,Angular4,Angular 4,jQuery,CSS,HTML,RWD,Dashboard,React,React.js,Vue,Vue.js">
  <meta name="google-site-verification" content="83fcqoPn-YTkXathQiicW-x3U2RWZh4PaPUzk91wtjY" />
  <title>New Task</title>

  <!-- Icons -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1" crossorigin="anonymous">
  <link href="https://gui-projects.s3.amazonaws.com/static/core/css/simple-line-icons.min.css" rel="stylesheet">

  <!-- Main styles for this application -->
  <link href="https://gui-projects.s3.amazonaws.com/static/core/css/estilo.css" rel="stylesheet">
  <link href="https://gui-projects.s3.amazonaws.com/static/core/css/style.css" rel="stylesheet">

</head>

<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">

 

<form action="NewTask" method="post"> 

<div class="container animated fadeIn">
        <div class="row justify-content-center">
            <div class="col-7">
                <div class="card-group">
                    <div class="card p-4 mb-5">
                        <div class="card-body">
                            
                                <input type='hidden' name='' value='' />
                                <h1>New Task</h1>
                                <p class="text-muted">Create your tasks here</p>
                                <form action="newTask" method="post">
                                    <input type='hidden' name= "" value="" />
									<div class="form-group">
                                        <label class="col-form-label">Task Name</label>
                                        <div class="input-group">
                                            <div class="input-group-append">
                                                <span class="input-group-text"><i class="fa fa-align-center"></i></span>
                                            </div>
                                            <input type="text" name="task_name" maxlength="80" class="form-control" placeholder="Task Name" required id="id_task_name" />
                                            
                                        </div>
                                    </div>
									
                                    <div class="form-group">
                                        <label class="col-form-label">Project Name</label>
                                        <div class="input-group">
                                            <div class="input-group-append">
                                                <span class="input-group-text"><i class="fa fa-puzzle-piece"></i></span>
                                            </div>
                                            <select name="projectName" class="form-control" >
                                            <%
                                            
                                            NewProjectDao pDao = new NewProjectDao();
                                            ArrayList<String> pList = pDao.projectList();
                                            for (int j =0; j < pList.size(); j++){
                                            	%>
                                            	<option value="projectName">
                                            	<%
                                            	out.println(pList.get(j));
                                            	
                                            }
                                            %>

  

</select>
                                            
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


											<%
												NewProjectDao dao = new NewProjectDao();
												ArrayList<String> userList = dao.userList();
												for (int i = 0; i < userList.size(); i++) {
											%>
											<option value="userName">
												<%
													out.println(userList.get(i));
												System.out.println("This is jsp user"+i);

													}
												%> 
										</select>

									</div>
								</div>
                                    <div class="form-group">
                                        <label class="col-form-label">Status</label>
                                        <div class="input-group">
                                            <div class="input-group-append">
                                                <span class="input-group-text"><i class="fa fa-circle"></i></span>
                                            </div>
                                            <select name="status" class="form-control" placeholder="Email" id="id_status">
  <option value="1">Pending</option>

  <option value="2">Working</option>

  <option value="3">Complete</option>

</select>
                                            
                                        </div>
                                    </div>
                                  <div class="form-group">
									<label class="col-form-label">Due Date</label>
									<div class="input-group">
										<div class="input-group-append">
											<span class="input-group-text"><i
												class="fa fa-calendar-alt"></i></span>
										</div>
										<input type="date" name="endDate" class="form-control"
											placeholder="Enter End Date" />
									</div>


								</div>

                                    <div class="">
                                        <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-dot-circle-o"></i> Submit</button>
                                        <button type="reset" class="btn btn-sm btn-danger"><i class="fa fa-ban"></i> Reset</button>
                                    </div>
                                </form>
                            
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form> 


    </main>

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
