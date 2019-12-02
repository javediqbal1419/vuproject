package com.vu.dao;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;
import com.vu.bo.User;
import com.vu.java.LoginBean;
import com.vu.util.DBConnection;

public class LoginDao {
	static int userId;
	static int projectId;

	public LoginDao() {

	}

	public User authenticateUser(LoginBean loginBean) {
		User user = null;
		String name = loginBean.getName();
		String password = loginBean.getPassword();

		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("SELECT * FROM users u WHERE u.`password` = '"+password+"' AND u.`name` = '"+name+"' ");
			
			if (resultSet.next()) {
				user = new User();
				user.setId(resultSet.getInt(1));
				user.setFirstName(resultSet.getString(2));
				user.setLastName(resultSet.getString(3));
				user.setRoleId(resultSet.getInt(7));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public String signup(LoginBean loginbean) {
		String name = loginbean.getName();
		String firstname = loginbean.getFirstName();
		String lastname = loginbean.getLastName();
		String password = loginbean.getPassword();
		String email = loginbean.getEmail();
		String role = loginbean.getRole();

		String insertQuery = "INSERT INTO users (name, firstName, lastName, email, password,  role_id) VALUES ( ?, ?,?, ?, ?,? )";
		
		java.sql.PreparedStatement insert = null;
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			insert = con.prepareStatement(insertQuery);

			insert.setString(1, name);
			insert.setString(2, firstname);
			insert.setString(3, lastname);
			insert.setString(4, email);
			insert.setString(5, password);
			insert.setString(6, role);
			int i = insert.executeUpdate();

			if (i != 0)
				return "SUCCESS";

			con.close();

		} catch (Exception e) {
			System.out.println(e);
			
		}
		return "Invalid email";

	}
	public ArrayList <User> userRole(){
		
		ArrayList <User> user_role = new ArrayList<User>();
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("SELECT * FROM role;");
			while (resultSet.next()) {
				User userrole = new User();
				userrole.setRoleId(resultSet.getInt("id"));
				userrole.setRole(resultSet.getString("role"));
				user_role.add(userrole);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		
	}
		return user_role;
}
}
