package com.manobandhan.sessionlogin;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manobandhan.config.DbConnection;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// try with resource
		try(Connection con = DbConnection.getInstance().getConnection();
				CallableStatement callableStatement = con.prepareCall("{call tsp_register(?,?,?,?,?,?,?)}");) {
		
			callableStatement.setString(1, request.getParameter("username"));
			callableStatement.setString(2, request.getParameter("password"));
			callableStatement.setString(3, request.getParameter("confirmpassword"));
			callableStatement.setString(4, request.getParameter("email"));
			callableStatement.setString(5, request.getParameter("contact"));
			callableStatement.registerOutParameter(6, java.sql.Types.VARCHAR);
			callableStatement.registerOutParameter(7, java.sql.Types.BIGINT);
			
			callableStatement.execute();
			String message = callableStatement.getString(6);
			long registerId = callableStatement.getLong(7);
			
			System.out.println("Message ==>>"+message +" Callable statment "+callableStatement.toString());
			if("Success".equalsIgnoreCase(message)) {
				request.getSession().setAttribute("registerId", registerId);
				RequestDispatcher dispatcher = request.getRequestDispatcher("info1.jsp");
				dispatcher.forward(request, response);
			}
			else
			{
				request.getSession().setAttribute("message", message);
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
				
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}
}
