package com.vu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vu.bo.User;
import com.vu.dao.LoginDao;
import com.vu.java.LoginBean;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SignUpServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		LoginDao udao = new LoginDao();
		ArrayList<User> userRole = udao.userRole();
		request.setAttribute("userRole", userRole);
		 request.getRequestDispatcher("jspPage/newUser.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("user");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String userPass = request.getParameter("pass1");
		String email = request.getParameter("email");
		String role = request.getParameter("userRole");

		LoginBean loginBean = new LoginBean();
		loginBean.setName(userName);
		loginBean.setFirstName(firstName);
		loginBean.setLastName(lastName);
		loginBean.setPassword(userPass);
		loginBean.setEmail(email);
		loginBean.setRole(role);
		LoginDao loginDao = new LoginDao();
		String signupUser = loginDao.signup(loginBean);

		if (signupUser.equals("SUCCESS")) {

			response.sendRedirect("login.jsp");

		} else {
			System.out.println("Not Signup");

		}
	}

}
