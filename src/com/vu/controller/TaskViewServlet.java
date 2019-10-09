package com.vu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vu.dao.NewProjectDao;

@WebServlet("/TaskViewServlet")
public class TaskViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public TaskViewServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

				NewProjectDao dao = new NewProjectDao();
				ArrayList<String> taskList = dao.taskList();
				
				request.setAttribute("taskList", taskList);
				
		request.getRequestDispatcher("jspPage/taskView.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

}
