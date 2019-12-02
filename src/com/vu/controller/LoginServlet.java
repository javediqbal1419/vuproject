package com.vu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vu.bo.Project;
import com.vu.bo.User;
import com.vu.dao.LoginDao;
import com.vu.dao.NewProjectDao;
import com.vu.java.LoginBean;

@WebServlet(name = "LoginServlet", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String url = request.getRequestURI();

		if (url.contains("login"))

		{
			LoginBean loginBean = new LoginBean();
			loginBean.setName(name);
			loginBean.setPassword(password);
			LoginDao loginDao = new LoginDao();
			User userValidate = loginDao.authenticateUser(loginBean);

			if (userValidate != null) {
				session.setAttribute("user", userValidate);
				response.sendRedirect("jspPage/welcome.jsp");

			} else {
				request.setAttribute("errMessage", "Invalid Crediential");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}

		}

		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		processRequest(request, response);
//		int roleId = request.getParameter("id");
//		String role = request.getParameter("role");
//		
//		
//		User user_role = new User();
//		user_role.setRoleId(roleId);
//		user_role.setRole(role);
//		
//
//		LoginDao newTaskDao = new LoginDao();
//		String newTask = newTaskDao.newTask(loginBean);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
//
//		LoginDao udao = new LoginDao();
//		ArrayList<User> userRole = udao.userRole();
//		request.setAttribute("userRole", userRole);
//		 request.getRequestDispatcher("jspPage/newUser.jsp").forward(request, response);
	}

}
