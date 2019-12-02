package com.vu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateTaskCompleteStatus")
public class UpdateTaskCompleteStatus {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			
			String tasktId =request.getParameter("tasktId");
	
			System.out.println(tasktId);
			
//			
		}

}