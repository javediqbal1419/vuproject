package com.vu.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.vu.bo.Cost;
import com.vu.dao.CostDao;

@WebServlet("/costViewServlet")
public class costViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public costViewServlet() {
        super();
        
    }
/*
 to send data in JSON 
 */
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Gson gsonObj = new Gson();
		String addData = "";
		
		
		CostDao cdao = new CostDao();
		ArrayList<Cost> t_cost = cdao.projectCost();
		
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.println(gsonObj.toJson(t_cost));
		out.flush();
		out.close();
		
//		addData = gsonObj.toJson(t_cost);
//		System.out.println("Total Cost:  "+addData);

		
	
//		request.setAttribute("dataPoints", addData);
		
//		response.setContentType("application/json");
		
		
//		request.getRequestDispatcher("jspPage/costView.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		
//		String start = request.getParameter("start");
//		  String limit = request.getParameter("limit");
//		  
//		  PrintWriter out = response.getWriter();
//		  response.setContentType("text/html");
//		  
//			CostDao cdao = new CostDao();
//			ArrayList<Cost> t_cost = cdao.projectCost();
//			
//			
//			Gson gson = new Gson();
//			  JsonArray arrayObj = new JsonArray();
//			  for(int i=0;i<t_cost.size();i++){
//			   Cost cost = t_cost.get(i);
//			   JsonElement costObj = gson.toJsonTree(cost); 
//			   arrayObj.add(costObj);
//			  }
//			  
//			  
//			  JsonObject myObj = new JsonObject();
//			  myObj.addProperty("success", true);
//			  myObj.add("cityList", arrayObj);
//			  myObj.addProperty("totalCount", 100);
//			   
//			  out.println(myObj.toString());
//			  out.close();
//			 
//			 }
//			  
//		doGet(request, response);
	}

}
