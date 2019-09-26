package com.vu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vu.dao.NewProjectDao;
import com.vu.java.LoginBean;

@WebServlet("/new-project")
public class NewProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// method to return user list from userDao
		
		request.setAttribute("userList", "userNameDB");
		request.getRequestDispatcher("jspPage/newProject.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String projectName = request.getParameter("projectName");
		System.out.println("This is a project name : "+projectName);
		String userName = request.getParameter("userName");
		String totalHours = request.getParameter("hours");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String desp = request.getParameter("desp");

		LoginBean loginBean = new LoginBean();
		loginBean.setProjectName(projectName);
		loginBean.setName(userName);
		loginBean.setHours(totalHours);
		loginBean.setEndDate(endDate);
		loginBean.setStartDate(startDate);
		loginBean.setDesp(desp);

		NewProjectDao addProjectDao = new NewProjectDao();
		String addProject = addProjectDao.addProject(loginBean);

		if (addProject.equals("SUCCESS")) {

		} else {
			System.out.println("Project not enter");
		}
	}
}
