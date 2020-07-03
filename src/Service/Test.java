package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Test {

	public static void main(String[] args) {
		try {
			DbConnection dbcon=DbConnection.getInstance();
			Connection con = dbcon.getConnection();
			System.out.println("Con"+con);
			PreparedStatement stmt=con.prepareStatement("update emp set name=? where id=?");  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
