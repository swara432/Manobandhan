package com.manobandhan.search;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manobandhan.config.DbConnection;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		
    	PrintWriter out = response.getWriter();
 			
    	String sql = "select * from personal_info where PROFILE_ID=?";
    	
		try(Connection con = DbConnection.getInstance().getConnection();PreparedStatement pst= con.prepareStatement(sql);) {
			
			//  PreparedStatement pst= con.prepareStatement("select * from personal_info where M_STATUS=?,MOTHER_TONGUE=?,AGE=?");
			pst.setInt(1, Integer.valueOf(request.getParameter("profileid"))); 
			
			/* pst.setString(1,request.getParameter("maritalstatus"));
			pst.setString(2,request.getParameter("mothertongue"));
			pst.setString(3,request.getParameter("age"));*/
			  
			try(ResultSet  rs = pst.executeQuery();){
			  while(rs.next()){
		            //Retrieve by column name
					out.print(rs.getInt(1));
			  }
		     
			 /* String Page = "/profile.jsp";
			  RequestDispatcher dispatcher = 
			   getServletContext().getRequestDispatcher(Page);
			  dispatcher.forward(request,response);
			  con.close();*/
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
