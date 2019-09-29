package com.vu.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

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
	public ArrayList<String> userList (){
		ArrayList<String> list = new ArrayList<String>();
	
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		String userNameDB = null;
		
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("SELECT NAME FROM users;");
			while (resultSet.next()) {
				
				userNameDB = resultSet.getString("name");
				list.add(userNameDB);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		
	}
	public String newTask(LoginBean loginbean) {
		String taskName = loginbean.getTask();
		String projectId= loginbean.getProjectName();
		String userId = loginbean.getName();
		String endDate = loginbean.getEndDate();
		
		String insertQuery = "INSERT INTO tasks (taskName, projectId,  dueDate, userId) VALUES (?, ?, ?, ? )";
		
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
	public ArrayList <String> projectList(){
		ArrayList <String> pList = new ArrayList <String>();
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
}