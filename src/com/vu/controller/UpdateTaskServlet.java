package com.vu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vu.bo.Status;
import com.vu.bo.Task;
import com.vu.bo.TaskStatus;
import com.vu.dao.NewProjectDao;
import com.vu.dao.UpdateDao;

@WebServlet("/UpdateTaskServlet")
public class UpdateTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateTaskServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UpdateDao dao = new UpdateDao();
		ArrayList<Task> uTaskList = dao.uTaskList();
		
		ArrayList<TaskStatus> taskStatus = dao.getTaskStatus();
		
//		ArrayList<Integer> taskstatus = dao.taskStatus();
//		request.setAttribute("taskstatus", taskstatus);
		request.setAttribute("taskStatus", taskStatus);
		request.setAttribute("uTaskList", uTaskList);
		request.getRequestDispatcher("jspPage/updateTask.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

}
