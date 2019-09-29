package com.vu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vu.dao.NewProjectDao;
import com.vu.java.LoginBean;

@WebServlet("/NewTask")
public class NewTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("jspPage/newTask.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String projectName = request.getParameter("projectName");
		String userName = request.getParameter("userName");
		String endDate = request.getParameter("endDate");

		LoginBean loginBean = new LoginBean();
		loginBean.setProjectName(projectName);
		loginBean.setName(userName);
		loginBean.setEndDate(endDate);

		NewProjectDao newTaskDao = new NewProjectDao();
		String newTask = newTaskDao.newTask(loginBean);

		if (newTask.equals("SUCCESS")) {

		} else {
			System.out.println("Project not enter");
		}
	}

}
