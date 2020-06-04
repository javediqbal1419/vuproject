package com.vu.util;

import java.sql.DriverManager;
import java.sql.Connection;


public class DBConnection {
	public static java.sql.Connection createConection()
	{
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/pman";
		String username = "root";
		String password = "1234";
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con =DriverManager.getConnection(url, username, password);
				
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
//			System.out.println("Printing connection object: " +con);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (java.sql.Connection) con;
	}

}
