package com.vu.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.management.Query;

import com.vu.bo.Cost;
import com.vu.util.DBConnection;

public class CostDao {
	
	public ArrayList<Cost> projectCost(){
		ArrayList <Cost> proCost = new ArrayList<Cost>();
		StringBuilder query = new StringBuilder(
				" SELECT p.`projectName`, SUM((DATEDIFF(p.`endDate`, p.`startDate`) * uc.`perUserCost`)) AS totalCost");
		query.append(" FROM projects p, users u, role r, user_cost uc");
		query.append(" WHERE u.id = p.`projectUsers` ");
		query.append(" AND r.`id` = u.`role_id`");
		query.append(" AND uc.`role_id` = u.`role_id`  GROUP BY p.`projectName`");	
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		try {
			con = DBConnection.createConection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query.toString());
			
			while (resultSet.next()) {
				Cost p_cost = new Cost();
				p_cost.setProjectName(resultSet.getString("projectName"));
				p_cost.setTotalCost(resultSet.getInt("totalCost"));
				proCost.add(p_cost);				
			}			
		}catch  (SQLException e){
			e.printStackTrace();	
		}
		return proCost;
	}

}
