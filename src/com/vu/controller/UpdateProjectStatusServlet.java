package com.vu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vu.bo.Status;
import com.vu.dao.UpdateDao;

@WebServlet("/UpdateProjectStatusServlet")
public class UpdateProjectStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateProjectStatusServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String status=request.getParameter("projectStatus");
		String projectId=request.getParameter("projectId");
//		System.err.println(status);
//		System.err.println(projectId);
		UpdateDao pdao = new UpdateDao();
		int res = pdao.updateProjectStatus(projectId, status);
	}

}
