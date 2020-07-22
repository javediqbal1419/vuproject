package com.vu.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.vu.bo.Cost;
import com.vu.bo.Project;
import com.vu.dao.CostDao;
import com.vu.dao.NewProjectDao;


@WebServlet("/dashBoardServlet")
public class dashBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public dashBoardServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		Gson gsonObj = new Gson();
		String costData = "";
//		String totalProject = "";
		CostDao cdao = new CostDao();
		ArrayList<Cost> t_cost = cdao.projectCost();
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.println(gsonObj.toJson(t_cost));
		
//		NewProjectDao pdao = new NewProjectDao();
//		Map<String, Integer> t_pro = pdao.projectCount();
//		response.setCharacterEncoding("UTF-8");
//		PrintWriter p_out = response.getWriter();
//		p_out.println(gsonObj.toJson(t_pro));
		out.flush();
		out.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
