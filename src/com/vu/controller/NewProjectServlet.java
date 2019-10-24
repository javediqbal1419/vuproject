package com.vu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vu.bo.User;
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

		
		NewProjectDao dao = new NewProjectDao();
		ArrayList<User> userList = dao.userList();
		
		
		request.setAttribute("userList", userList);
		
		
		request.getRequestDispatcher("jspPage/newProject.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String projectName = request.getParameter("projectName");
		String userName = request.getParameter("userName");
		String hours = request.getParameter("hours");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String desp = request.getParameter("desp");

		NewProjectDao addProjectDao = new NewProjectDao();
		String addProject = addProjectDao.addProject(projectName, userName, hours, startDate, endDate,  desp);
	}
}
