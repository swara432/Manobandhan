package DatabaseConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.ResultSet;

public class DbCon {




		public static void main(String args[]) throws ClassNotFoundException, SQLException
		{
		/*
		 * 1.load driver
		 * 2.Get Connection
		 * 3.create statement
		 */
			System.out.println("begin");
		Class.forName("com.mysql.jdbc.Driver");//make instances 
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/manobandhan?useSSL=false", "root", "root");
		//making the connection to the database
		System.out.println(con);
		Statement stmt=con.createStatement();
		
		ResultSet rs= (ResultSet) stmt.executeQuery("select * from login_info");
		
		if(rs.next())
		{
			System.out.println("records available");
			
		}
		else
		{
			System.out.println("records not available");
		}
		do
		{
			System.out.print(rs.getString(1));
			System.out.print(" "+rs.getString(2));
			System.out.print(" "+rs.getString(3));
			System.out.print(" "+rs.getString(4));
			System.out.print(" "+rs.getString(5));
			System.out.println(" "+rs.getString(6));
		}while(rs.next());
		System.out.println("done");
		}
	}


