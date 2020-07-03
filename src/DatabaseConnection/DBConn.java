package DatabaseConnection;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/DBConn")
public class DBConn extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
	
		RequestDispatcher d= request.getRequestDispatcher("ProfileCreation.jsp");
		//String id = request.getParameter("id");


		d.forward(request, response);
																																																																																									

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
	
		try {
			Class.forName("com.mysql.jdbc.Driver");//make instances and load in memory
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/manobandhan?useSSL=false", "root", "root");
			//String id =request.getParameter("id");
			//System.out.println("name "+id);
			
			
	PreparedStatement st =(PreparedStatement)con.prepareStatement("insert into login_info(FIRSTNAME,LASTNAME,EMAIL,CONTACT_NO,USERNAME,PASSWORD,I_AM,LOOKING_FOR) "
			+ "values(?,?,?,?,?,?,?,?)"); 
			
			//PreparedStatement st =con 
					// .prepareStatement("insert into Student value(?,?)"); 
			
			//System.out.println("Exe"+rowsAffected);
			
//		ResultSet rs=st.executeQuery();
			//System.out.println("Exe"+rs);
			//st.setInt(1, Integer.valueOf(request.getParameter(""))); 
				 st.setString(1, request.getParameter("firstname")); 
				 st.setString(2, request.getParameter("lastname")); 
				 st.setString(3, request.getParameter("email")); 
				 st.setString(4, request.getParameter("phoneno")); 
				 st.setString(5, request.getParameter("username")); 
				 st.setString(6, request.getParameter("password")); 
				 st.setString(7, request.getParameter("sex")); 
				 st.setString(8, request.getParameter("lookingfor")); 
			//	 st.executeUpdate();
			
				 
				 
				 int rows =st.executeUpdate();
					//con.commit();
					if(rows!=0) {
						System.out.println("inserted");
					}
					 st.close();	
				 con.close();
		 }catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
		
		e.printStackTrace();
		
	}
		PrintWriter out = response.getWriter(); 
        out.println("<html><body><b>Successfully Inserted"
                    + "</b></body></html>"); 
		//doGet(request, response);
	}
	
	}


