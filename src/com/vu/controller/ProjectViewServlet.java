package com.vu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vu.bo.Project;
import com.vu.dao.NewProjectDao;

@WebServlet("/ProjectViewServlet")
public class ProjectViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ProjectViewServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		NewProjectDao pdao = new NewProjectDao();
		ArrayList<Project> projectview = pdao.projectview();

		int projectCount = pdao.p_count();
		request.setAttribute("projectview", projectview);
		request.setAttribute("projectCount", projectCount);
		request.getRequestDispatcher("jspPage/projectView.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

}
