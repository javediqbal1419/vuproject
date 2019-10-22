package com.vu.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.vu.bo.Project;
import com.vu.bo.Status;
import com.vu.bo.Task;
import com.vu.bo.User;
import com.vu.util.DBConnection;

public class UpdateDao {

	public ArrayList<Task> uTaskList() {
		ArrayList<Task> u_tList = new ArrayList<Task>();
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
				Task utl = new Task();
				utl.setName(resultSet.getString("name"));
				utl.setProjectName(resultSet.getString("projectName"));
				utl.setTaskName(resultSet.getString("taskName"));
				utl.setStatus(resultSet.getString("status"));
				u_tList.add(utl);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u_tList;
	}

	public ArrayList<User> userList() {
		ArrayList<User> list = new ArrayList<User>();

		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("SELECT * FROM users");
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

	public ArrayList<Project> projectview() {
		ArrayList<Project> projectShow = new ArrayList<Project>();
		StringBuilder query = new StringBuilder(
				"SELECT p.`id` projectId, u.`name`, p.`description`,p.`projectName`,ps.`p_status` FROM `users` u,`tasks` t,`projects` p, `pr_status` ps ");
		query.append("WHERE p.`id` = t.`projectId`");
		query.append("AND t.`userId` = u.`id`  ");
		query.append("AND p.`p_status` = ps.`id`  ");
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query.toString());
			while (resultSet.next()) {
				Project ps = new Project();
				ps.setProjectId(resultSet.getInt("projectId"));
				ps.setName(resultSet.getString("name"));
				ps.setDescp(resultSet.getString("description"));
				ps.setProjectName(resultSet.getString("projectName"));
				ps.setP_status(resultSet.getString("p_status"));
				projectShow.add(ps);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return projectShow;
	}

	public ArrayList<Status> getProjectStatus() {

		ArrayList<Status> statusList = new ArrayList<Status>();
		StringBuilder query = new StringBuilder("SELECT * FROM `pr_status` ");
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query.toString());
			while (resultSet.next()) {
				Status status = new Status();
				status.setId(resultSet.getInt("id"));

				status.setTitle(resultSet.getString("p_status"));
				statusList.add(status);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return statusList;

	}

	public int updateProjectStatus(String projectId, String status) {

		StringBuilder query = new StringBuilder("UPDATE `projects` p SET p.`p_status` = ? WHERE p.`id` = ? ");
		java.sql.PreparedStatement insert = null;
		Connection con = null;
		Statement statement = null;

		try {

			con = DBConnection.createConection();
		
			insert = con.prepareStatement(query.toString());

			insert.setInt(1, Integer.parseInt(status));
			insert.setInt(2, Integer.parseInt(projectId));

			insert.executeUpdate();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 1;

	}
}
