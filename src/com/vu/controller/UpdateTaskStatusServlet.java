package com.vu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vu.dao.UpdateDao;

/**
 * Servlet implementation class UpdateTaskStatusServlet
 */
@WebServlet("/UpdateTaskStatusServlet")
public class UpdateTaskStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateTaskStatusServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String taskStatus=request.getParameter("taskStatus");
		String taskId=request.getParameter("taskId");
		System.err.println(taskStatus);
		System.err.println(taskId);
		UpdateDao pdao = new UpdateDao();
		int res = pdao.updateProjectStatus(taskId, taskStatus);
	}

}
