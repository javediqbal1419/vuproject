package com.vu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vu.dao.LoginDao;
import com.vu.java.LoginBean;

@WebServlet(name = "LoginServlet", urlPatterns = { "/login", "/sign-up" })
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String url = request.getRequestURI();

		if (url.contains("login"))

		{
			LoginBean loginBean = new LoginBean();
			loginBean.setName(name);
			loginBean.setPassword(password);
			LoginDao loginDao = new LoginDao();
			String userValidate = loginDao.authenticateUser(loginBean);

			if (userValidate.equals("SUCCESS")) {
				response.sendRedirect("welcome.jsp");

			} else {
				request.setAttribute("errMessage", userValidate);
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}

		}

		else if (url.contains("sign-up"))

		{
			// do signup
			String userName = request.getParameter("user");
			String userPass = request.getParameter("pass");
			String email = request.getParameter("email");

			LoginBean loginBean = new LoginBean();
			loginBean.setName(userName);
			loginBean.setPassword(userPass);
			loginBean.setEmail(email);
			LoginDao loginDao = new LoginDao();
			String signupUser = loginDao.signup(loginBean);

			if (signupUser.equals("SUCCESS")) {
				
				response.sendRedirect("welcome.jsp");
				
				} else {
				System.out.println("Not Signup");

			}

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);

	}

}
