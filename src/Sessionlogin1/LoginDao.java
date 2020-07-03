package Sessionlogin1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import Service.DbConnection;

public class LoginDao {

		 
	    public UserInfo checkLogin(String username, String password) throws SQLException,
	            ClassNotFoundException {
	      
	 
	       DbConnection dbcon = DbConnection.getInstance();
			Connection con = dbcon.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from login_info where USERNAME=? and PASSWORD=?  ");
			
			ps.setString(1,username);
			
			ps.setString(2,password);
	 
	        ResultSet result = ps.executeQuery();
	 
	        UserInfo user = null;
	 
	        if (result.next()) {
	            user = new UserInfo();
	            user.setUsername(username);
	            user.setPassword(password);
	            //System.out.print(result.getInt("INFO_ID"));
	            user.setInfoId(result.getInt("INFO_ID")); //check
	        }
	 
	        con.close();
	 
	        return user;
	    }
	}


