package com.vu.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

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

		Map<String, Integer> projectCountMap = pdao.projectCount();
		request.setAttribute("pending", projectCountMap.get("pending"));
		request.setAttribute("working", projectCountMap.get("working"));
		request.setAttribute("complete", projectCountMap.get("complete"));
		request.setAttribute("projectview", projectview);
		
		Map<String, Integer> projectStatusProgMap = pdao.projectStatusProg();
		request.setAttribute("proToDo", projectStatusProgMap.get("proToDo"));
		request.setAttribute("proWorking", projectStatusProgMap.get("proWorking"));
		request.setAttribute("proComplete", projectStatusProgMap.get("proComplete"));
		
		
		request.getRequestDispatcher("jspPage/projectView.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

}
