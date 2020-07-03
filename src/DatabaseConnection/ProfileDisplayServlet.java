package DatabaseConnection;

import java.io.IOException;
import Service.DbConnection;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProfileDisplayServlet
 */
@WebServlet("/ProfileDisplayServlet")
public class ProfileDisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProfileDisplayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DbConnection dbcon=DbConnection.getInstance();
			Connection con = dbcon.getConnection();
			Statement stmt=con.createStatement();
			ResultSet rs=  stmt.executeQuery("select * from personal_info");
			//ResultSet rs1=  stmt.executeQuery("select * from family_background");
			PrintWriter out=response.getWriter();
		
			out.print("<table border=1px ");
			out.print("<caption>Results:</caption>");
			out.print("<tr>");
	    	out.print(" <td > PROFILE_ID </td> ");
	        out.print("<td > NAME </td> ");
	        out.print(" <td > MARITAL STATUS </td> ");
	        out.print(" <td > QUALIFICATION </td> ");
	        out.print(" <td > ANNUAL INCOME</td> ");
	        out.print(" <td > HEIGHT</td> ");
	        out.print(" <td > WEIGHT</td> ");
	        out.print(" <td > BLOOD GROUP</td> ");
	        out.print(" <td > COMPLEXION</td> ");
	        out.print(" <td > LANGUAGE KNOWN</td> ");
	        out.print(" <td > BODY TYPE</td> ");
	        out.print(" <td > MOTHER TONGUE</td> ");
	        out.print(" <td > DRINK</td> ");
	        out.print(" <td > SMOKE</td> ");
	      /* out.print(" <td >FATHER NAME</td> ");
	        out.print(" <td > FATHER OCCUPATION</td> ");
	        out.print(" <td > MOTHER NAME</td> ");
	        out.print(" <td > MOTHER OCCUPATION</td> ");
	        out.print(" <td > BROTHER</td> ");
	        out.print(" <td > SISTER</td> ");
	        out.print(" <td > UNCLE</td> ");
	        out.print(" <td > UNCLE(M)</td> ");
	        out.print(" <td > AUNT</td> ");
	        out.print(" <td > FAMILY INCOME</td> ");
		       out.print(" <td > BIRTH TIME</td> ");
		        out.print(" <td > D.O.B</td> ");
		        out.print(" <td > BIRTH PLACE</td> ");
		        out.print(" <td > RASHI</td> ");
		        out.print(" <td > NADI</td> ");
		        out.print(" <td > MANGLIK</td> ");
		        out.print(" <td > GOTRA</td> ");
		        out.print(" <td > DEVAK</td> ");
		        out.print(" <td > GAAN</td> ");*/
	       
	        out.print("</tr>");
	       
	        while (rs.next()) {
	        
	         
	        	out.print("<tr>");
	        	
	            out.print("<td > "+rs.getString(1)+" </td> ");
	            out.print(" <td > "+rs.getString(2)+" </td> ");
	            out.print(" <td > "+rs.getString(3)+" </td> ");
	            out.print(" <td > "+rs.getString(4)+" </td> ");
	            out.print(" <td > "+rs.getString(5)+" </td> ");
	            out.print(" <td > "+rs.getString(6)+" </td> ");
	            out.print(" <td > "+rs.getString(7)+" </td> ");
	            out.print(" <td > "+rs.getString(8)+" </td> ");
	            out.print(" <td > "+rs.getString(9)+" </td> ");
	            out.print(" <td > "+rs.getString(10)+" </td> ");
	            out.print(" <td > "+rs.getString(11)+" </td> ");
	            out.print(" <td > "+rs.getString(12)+" </td> ");
	            out.print(" <td > "+rs.getString(13)+" </td> ");
	            out.print(" <td > "+rs.getString(14)+" </td> ");

		      /*  out.print("<td > "+rs1.getString(1)+" </td> ");
	            out.print(" <td > "+rs1.getString(2)+" </td> ");
	            out.print(" <td > "+rs1.getString(3)+" </td> ");
	            out.print(" <td > "+rs1.getString(4)+" </td> ");
	            out.print(" <td > "+rs1.getString(5)+" </td> ");
	            out.print(" <td > "+rs1.getString(6)+" </td> ");
	            out.print(" <td > "+rs1.getString(7)+" </td> ");
	            out.print(" <td > "+rs1.getString(8)+" </td> ");
	            out.print(" <td > "+rs1.getString(9)+" </td> ");
	                 out.print(" <td > "+rs1.getString(10)+" </td> ");*/
	            
	            out.print("</tr>");
	        
	    
	    
	    
           
	        out.close();
	        }
	      
	        /* while (rs2.next()) {
	        
	         
        	out.print("<tr>");
    
        out.print("<td > "+rs2.getString(1)+" </td> ");
        out.print(" <td > "+rs2.getString(2)+" </td> ");
        out.print(" <td > "+rs2.getString(3)+" </td> ");
        out.print(" <td > "+rs2.getString(4)+" </td> ");
        out.print(" <td > "+rs2.getString(5)+" </td> ");
        out.print(" <td > "+rs2.getString(6)+" </td> ");
        out.print(" <td > "+rs2.getString(7)+" </td> ");
        out.print(" <td > "+rs2.getString(8)+" </td> ");
        out.print(" <td > "+rs2.getString(9)+" </td> ");
             
        out.print("</tr>");
        out.close();
        }*/

			} catch (SQLException e) {
				
				e.printStackTrace();
				
			}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
