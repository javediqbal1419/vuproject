package com.vu.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.vu.bo.Project;
import com.vu.bo.Task;
import com.vu.bo.User;
import com.vu.java.LoginBean;
import com.vu.util.DBConnection;

public class NewProjectDao {
	public NewProjectDao() {

	}

	public String addProject(String projectName, String userName, String hours, String startDate, String endDate,
			String desp) {
		String insertQuery = "INSERT INTO projects (projectName, projectUsers, startDate, endDate,p_status, totalHours, description) VALUES (?, ?, ?, ?, ?, ?,? )";

		java.sql.PreparedStatement insert = null;
		Connection con = null;
		Statement statement = null;
		try {

			con = DBConnection.createConection();
			statement = con.createStatement();
			insert = con.prepareStatement(insertQuery);

			String[] userList = userName.split(",");
			for (int i = 0; i < userList.length; i++) {

				insert.setString(1, projectName);
				insert.setString(2, userList[i]);
				insert.setString(3, startDate);
				insert.setString(4, endDate);
				insert.setString(5, "1");
				insert.setString(6, hours);
				insert.setString(7, desp);
				insert.addBatch();

			}
			insert.executeBatch();
			con.close();

		} catch (Exception e) {
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
		String startDate = loginbean.getStartDate();
		String endDate = loginbean.getEndDate();

		String insertQuery = "INSERT INTO tasks (taskName, projectId, startDate,  endDate, userId,task_status_id) VALUES (?, ?, ?, ?, ?, ? )";

		java.sql.PreparedStatement insert = null;
		Connection con = null;
		Statement statement = null;
		try {

			con = DBConnection.createConection();
			statement = con.createStatement();
			insert = con.prepareStatement(insertQuery);

			insert.setString(1, taskName);
			insert.setString(2, projectId);
			insert.setString(3, startDate);
			insert.setString(4, endDate);
			insert.setString(5, userId);
			insert.setString(6, "1");
			int i = insert.executeUpdate();

			if (i != 0)
				return "SUCCESS";

			con.close();

		} catch (Exception e) {
			System.out.println("Enter Task " + e);

		}
		return null;

	}

	public ArrayList<Project> projectList() {
		ArrayList<Project> pList = new ArrayList<Project>();
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("SELECT * FROM projects p GROUP BY p.`projectName`;");
			while (resultSet.next()) {
				Project ps = new Project();
				ps.setProjectId(resultSet.getInt("id"));
				ps.setProjectName(resultSet.getString("projectName"));
				pList.add(ps);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return pList;
	}

	public ArrayList<Task> taskList() {
		ArrayList<Task> tList = new ArrayList<Task>();
		StringBuilder query = new StringBuilder(
				"SELECT u.`name`, t.`taskName`,p.`projectName`,ts.`status`, t.`taskPercent`, t.`endDate`  ");
		query.append(" FROM `users` u,`tasks` t,`projects` p, `task_status` ts");
		query.append(" WHERE p.`id` = t.`projectId`");
		query.append("AND t.`userId` = u.`id` ");
		query.append("AND t.`task_status_id` = ts.`id`");
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
				ts.setTaskPercent(resultSet.getString("taskPercent"));
				ts.settEndDate(resultSet.getString("endDate"));
				tList.add(ts);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tList;
	}

	public ArrayList<Project> projectview() {
		ArrayList<Project> projectShow = new ArrayList<Project>();
		StringBuilder query = new StringBuilder(
				"SELECT p.`id`, p.`description`,p.`projectName`, ps.`p_status`, ROUND(AVG(t.`taskPercent`),2) proProg, p.`endDate` ");
		query.append(" FROM tasks t");
		query.append(" RIGHT JOIN projects p ON p.`id` = t.`projectId`");
		query.append(" LEFT JOIN pr_status ps ON ps.`id` = p.`p_status`");
		query.append(" GROUP BY p.`projectName`");
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query.toString());
			while (resultSet.next()) {
				Project ps = new Project();
				ps.setProjectId(resultSet.getInt("id"));
				ps.setDescp(resultSet.getString("description"));
				ps.setProjectName(resultSet.getString("projectName"));
				ps.setP_status(resultSet.getString("p_status"));
				ps.setProProg(resultSet.getString("proProg"));
				ps.setpEndDate(resultSet.getString("endDate"));
				projectShow.add(ps);	

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return projectShow;
	}

	public ArrayList<Project> userview() {
		ArrayList<Project> userShow = new ArrayList<Project>();
		StringBuilder query = new StringBuilder(
				" SELECT u.`id`, CONCAT_WS(' ', firstName, lastName) AS NAME,u.`currentDate` AS u_currentDate, ");
		query.append("  COUNT(DISTINCT p.`projectName`) AS proCount, ");
		query.append("  COUNT(DISTINCT t.`id`) AS taskCount,");
		query.append(" AVG(IFNULL(t.`taskPercent`,0)) AS proPercent, ");
		query.append(" AVG(t.`taskPercent`) AS taskPercent");
		query.append(" FROM  users u	INNER JOIN projects p ON p.`projectUsers` = u.`id`");
		query.append(" LEFT JOIN tasks t ON u.`id` = t.`userId` AND t.`projectId` = p.`id`");
		query.append(" GROUP BY  u.`id` ");
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query.toString());
			while (resultSet.next()) {
				Project us = new Project();
				us.setName(resultSet.getString("name"));
				us.setTaskCount(resultSet.getInt("taskCount"));
				us.setProCount(resultSet.getInt("proCount"));
				us.setU_currentDate(resultSet.getString("u_currentDate"));
				us.setProPercent(resultSet.getFloat("proPercent"));
				us.setTaskPercent(resultSet.getFloat("taskPercent"));
				userShow.add(us);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userShow;
	}

//	public ArrayList<Project> count() {
//		ArrayList<Project> totalCount = new ArrayList<Project>();
//		StringBuilder query = new StringBuilder(
//				"SELECT COUNT(*) AS proCount FROM projects p WHERE p.`p_status` = 2;");
//		Connection con = null;
//		Statement statement = null;
//		ResultSet resultSet = null;
//		try {
//			con = DBConnection.createConection();
//			statement = con.createStatement();
//			resultSet = statement.executeQuery(query.toString());
//			while (resultSet.next()) {
//				Project tc = new Project();
//				tc.setProCount(resultSet.getInt("proCount"));
//				totalCount.add(tc);
//				
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return totalCount;
//}
	public int p_count() {
		int proCount = 0;
		StringBuilder query = new StringBuilder("SELECT COUNT(*) AS proCount FROM projects p WHERE p.`p_status` = 2;");
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query.toString());
			while (resultSet.next()) {

				proCount = resultSet.getInt("proCount");

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return proCount;
	}

	public int t_count() {
		int tACount = 0;
		StringBuilder query = new StringBuilder(
				"SELECT COUNT(*) AS taskCount FROM tasks t WHERE t.`task_status_id` = 2;");
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query.toString());
			while (resultSet.next()) {

				tACount = resultSet.getInt("taskCount");

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tACount;
	}

	public Map<String, Integer> taskStatus() {
		ArrayList<Integer> t_status = new ArrayList<Integer>();
		Map<String, Integer> tc_map = new HashMap<String, Integer>();
		StringBuilder query = new StringBuilder(
				"SELECT COUNT(IF (t.`task_status_id` = '1', 1, NULL)) AS pending,");
		query.append(" COUNT(IF (t.`task_status_id` = '2', 1, NULL)) AS working,");
		query.append(" COUNT(IF (t.`task_status_id` = '3', 1, NULL)) AS complete");
		query.append(" FROM Tasks t");
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query.toString());
			while (resultSet.next()) {
	
				int tc1 = resultSet.getInt("pending");
				tc_map.put("pending", tc1);
				int tc2 = resultSet.getInt("working");
				tc_map.put("working", tc2);
				int tc3 = resultSet.getInt("complete");
				tc_map.put("complete", tc3);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tc_map;
	}
	public Map<String, Integer> projectCount(){
		Map<String, Integer> pc_map = new HashMap<String, Integer>();
		StringBuilder query = new StringBuilder(
				"SELECT COUNT(IF (p.`p_status` = '1', 1, NULL)) AS pending,");
		query.append(" COUNT(IF (p.`p_status` = '2', 1, NULL)) AS working,");
		query.append(" COUNT(IF (p.`p_status` = '3', 1, NULL)) AS complete");
		query.append(" FROM projects p");
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query.toString());
			while (resultSet.next()) {
	
				int pc1 = resultSet.getInt("pending");
				pc_map.put("pending", pc1);
				int pc2 = resultSet.getInt("working");
				pc_map.put("working", pc2);
				int pc3 = resultSet.getInt("complete");
				pc_map.put("complete", pc3);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return pc_map;
		
	}
	
	public Map<String, Integer> projectStatusProg(){
		Map<String, Integer> psp_map = new HashMap<String, Integer>();
		StringBuilder query = new StringBuilder(
				"SELECT COUNT(IF (p.`p_status` = '1', 1, NULL)) AS proToDo,");
		query.append(" COUNT(IF (p.`p_status` = '2', 1, NULL)) AS proWorking,");
		query.append(" COUNT(IF (p.`p_status` = '3', 1, NULL)) AS proComplete");
		query.append(" FROM projects p");
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query.toString());
			while (resultSet.next()) {
	
				int psp1 = resultSet.getInt("proToDo");
				psp_map.put("proToDo", psp1);
				int psp2 = resultSet.getInt("proWorking");
				psp_map.put("proWorking", psp2);
				int psp3 = resultSet.getInt("proComplete");
				psp_map.put("proComplete", psp3);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return psp_map;
		
	}
}