package com.vu.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vu.bo.Cost;
import com.vu.dao.CostDao;

@WebServlet("/costViewServlet")
public class costViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public costViewServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CostDao cdao = new CostDao();
		ArrayList<Cost> t_cost = cdao.projectCost();
		request.setAttribute("proCost", t_cost);		
		
		request.getRequestDispatcher("jspPage/costView.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
