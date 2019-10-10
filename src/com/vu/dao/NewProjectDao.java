package com.vu.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.vu.bo.Task;
import com.vu.bo.User;
import com.vu.java.LoginBean;
import com.vu.util.DBConnection;

public class NewProjectDao {
	public NewProjectDao() {

	}

	public String addProject(LoginBean loginbean) {

		String projectName = loginbean.getProjectName();
		String userName = loginbean.getName();
		String hours = loginbean.getHours();
		String startDate = loginbean.getStartDate();
		String endDate = loginbean.getEndDate();
		String desp = loginbean.getDesp();

		String insertQuery = "INSERT INTO projects (projectName, projectUsers, startDate, endDate,status_id, totalHours, description) VALUES (?, ?, ?, ?, ?, ?,? )";

		java.sql.PreparedStatement insert = null;
		Connection con = null;
		Statement statement = null;
		try {

			con = DBConnection.createConection();
			statement = con.createStatement();
			insert = con.prepareStatement(insertQuery);

			insert.setString(1, projectName);
			insert.setString(2, userName);
			insert.setString(3, startDate);
			insert.setString(4, endDate);
			insert.setString(5, "2");
			insert.setString(6, hours);
			insert.setString(7, desp);
			int i = insert.executeUpdate();

			if (i != 0)
				return "SUCCESS";

			con.close();

		} catch (Exception e) {
			System.out.println("Enter Project " + e);
		}

		return "Please Enter Project Name ";

	}

	public ArrayList<User> userList() {
		ArrayList<User> list = new ArrayList<User>();

		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("SELECT * FROM users;");
			while (resultSet.next()) {
				User user = new User();
				user.setId(resultSet.getInt("id"));
				user.setName(resultSet.getString("name"));
				list.add(user);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}

	public String newTask(LoginBean loginbean) {
		String taskName = loginbean.getTask();
		String projectId = loginbean.getProjectName();
		String userId = loginbean.getName();
		String endDate = loginbean.getEndDate();

		String insertQuery = "INSERT INTO tasks (taskName, projectId,  endDate, userId) VALUES (?, ?, ?, ? )";

		java.sql.PreparedStatement insert = null;
		Connection con = null;
		Statement statement = null;
		try {

			con = DBConnection.createConection();
			statement = con.createStatement();
			insert = con.prepareStatement(insertQuery);

			insert.setString(1, taskName);
			insert.setString(2, projectId);
			insert.setString(3, endDate);
			insert.setString(4, userId);
			int i = insert.executeUpdate();

			if (i != 0)
				return "SUCCESS";

			con.close();

		} catch (Exception e) {
			System.out.println("Enter Task " + e);

		}
		return null;

	}

	public ArrayList<String> projectList() {
		ArrayList<String> pList = new ArrayList<String>();
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		String pNameDB = null;
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("SELECT projectName FROM projects;");
			while (resultSet.next()) {

				pNameDB = resultSet.getString("projectName");
				pList.add(pNameDB);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return pList;
	}

	public ArrayList<Task> taskList() {
		ArrayList<Task> tList = new ArrayList<Task>();
		StringBuilder query = new StringBuilder(
				"SELECT u.`name`, t.`taskName`,p.`projectName`,ts.`status` FROM `users` u,`tasks` t,`projects` p, `task_status` ts ");
		query.append(" WHERE p.`id` = t.`projectId` ");
		query.append("AND t.`userId` = u.`id` ");
		query.append("AND t.`task_status_id` = ts.`id` ");
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query.toString());
			while (resultSet.next()) {
				Task ts = new Task();
				ts.setName(resultSet.getString("name"));
				ts.setProjectName(resultSet.getString("projectName"));
				ts.setTaskName(resultSet.getString("taskName"));
				ts.setStatus(resultSet.getString("status"));
				tList.add(ts);

				
				
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return tList;
	}
}