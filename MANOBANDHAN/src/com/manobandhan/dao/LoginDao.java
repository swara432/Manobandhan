package com.manobandhan.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import com.manobandhan.config.DbConnection;

public class LoginDao {
	
	public long checkLogin(String username, String password)  {
		
		long Id = 0;
		
		String sql = " {CALL tsp_login(?,?,?)}";
		
		try(Connection connection = DbConnection.getInstance().getConnection();CallableStatement callableStatement = connection.prepareCall(sql)){

			callableStatement.setString(1, username);
			callableStatement.setString(2, password);
			callableStatement.registerOutParameter(3, java.sql.Types.INTEGER);
			callableStatement.execute();
			
			Id = callableStatement.getInt(3);	
	 
		} catch (Exception e) {
			e.printStackTrace();
		}
	 
	        return Id;
	    }
	}


