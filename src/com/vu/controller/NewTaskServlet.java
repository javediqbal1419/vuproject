package com.vu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vu.bo.Project;
import com.vu.bo.User;
import com.vu.dao.NewProjectDao;
import com.vu.java.LoginBean;

@WebServlet("/NewTask")
public class NewTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		NewProjectDao dao = new NewProjectDao();
		ArrayList<User> userList = dao.userList();
		ArrayList <Project> projectList = dao.projectList();
		
		request.setAttribute("userList", userList);
		request.setAttribute("projectList", projectList);
		
		request.getRequestDispatcher("jspPage/newTask.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String taskName = request.getParameter("taskName");
		String projectId = request.getParameter("projectId");
		String projectName = request.getParameter("projectName");
		String userName = request.getParameter("userName");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");

		LoginBean loginBean = new LoginBean();
		loginBean.setTask(taskName);
		loginBean.setProjectId(projectId);
		loginBean.setProjectName(projectName);
		loginBean.setName(userName);
		loginBean.setStartDate(startDate);
		loginBean.setEndDate(endDate);

		NewProjectDao newTaskDao = new NewProjectDao();
		String newTask = newTaskDao.newTask(loginBean);

		if (newTask.equals("SUCCESS")) {

		} else {
			System.out.println("Project not enter");
		}
	}

}
