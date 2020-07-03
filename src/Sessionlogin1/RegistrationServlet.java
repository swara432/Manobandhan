package Sessionlogin1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.DbConnection;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			
			
			DbConnection dbcon=DbConnection.getInstance();
			Connection con = dbcon.getConnection();
		
			
			PreparedStatement pst= con.prepareStatement("insert into login_info(USERNAME,PASSWORD.C_PASSWORD,EMAIL,CONTACT_NO)"
					+ " values(?,?,?,?,?)");
			pst.setString(1,request.getParameter("username"));
			pst.setString(2,request.getParameter("password"));
			pst.setString(3,request.getParameter("confirmpassword"));
			pst.setString(4,request.getParameter("email"));
			pst.setString(5,request.getParameter("contact"));
			//System.out.println("completed");
			 int rows=pst.executeUpdate();
				if(rows!=0) {
					System.out.println("inserted");
					response.sendRedirect(request.getContextPath() + "/info1.jsp");


					
				}
				con.close();
				
				
				
		} catch (SQLException e) {

		e.printStackTrace();
		
	}

	}
}
