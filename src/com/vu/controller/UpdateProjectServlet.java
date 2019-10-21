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
import com.vu.dao.UpdateDao;

@WebServlet("/UpdateProjectServlet")
public class UpdateProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateProjectServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		UpdateDao pdao = new UpdateDao();
		ArrayList<Project> projectview = pdao.projectview();
		request.setAttribute("projectview", projectview);
		request.getRequestDispatcher("jspPage/updateProject.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}
