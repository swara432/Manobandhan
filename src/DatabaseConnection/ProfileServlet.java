package DatabaseConnection;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Service.DbConnection;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	


	
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			try {
	
				
				
				DbConnection dbcon=DbConnection.getInstance();
				Connection con = dbcon.getConnection();
			
				
				PreparedStatement pst= con.prepareStatement("insert into personal_info(Profile_man_by,NAME,AGE,M_STATUS,QUALIFICATION,OCCUPATION,ANNUAL_INCOME,HEIGHT,WEIGHT,BLOOD_GROUP,COMPLEXION,LANGUAGE,BODY_TYPE,MOTHER_TONGUE,CASTE,DRINK,SMOKE)"
						+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				pst.setString(1,request.getParameter("ManageBy"));
				pst.setString(2,request.getParameter("FullName"));
				pst.setString(3,request.getParameter("Age"));
				pst.setString(4,request.getParameter("MStatus"));
				pst.setString(5,request.getParameter("Qualification"));
				pst.setString(5,request.getParameter("Occupation"));
				pst.setString(6,request.getParameter("AI"));
				pst.setString(7,request.getParameter("Height"));
				pst.setString(8,request.getParameter("Weight"));
				pst.setString(9,request.getParameter("BloodGroup"));
				pst.setString(9,request.getParameter("Caste"));
				pst.setString(10,request.getParameter("Complexion"));
				pst.setString(11,request.getParameter("LanguageKnown"));
				pst.setString(12,request.getParameter("BodyType"));
				pst.setString(13,request.getParameter("MotherTounge"));
				pst.setString(14,request.getParameter("Drink"));
				pst.setString(15,request.getParameter("Smoke"));
				
				 int rows=pst.executeUpdate();
					if(rows!=0) {
						System.out.println("inserted");
						
					}
					PreparedStatement pst2= con.prepareStatement("insert into family_background(FATHER_NAME,FATHER_OCCUPATION,MOTHER_NAME,MOTHER_OCCUPATION,BROTHER,SISTER,UNCLE,UNCLEM,AUNT,FAMILY_INCOME)"
							+ " values(?,?,?,?,?,?,?,?,?,?)");
					pst2.setString(1,request.getParameter("FName"));
					pst2.setString(2,request.getParameter("Foccupation"));
					pst2.setString(3,request.getParameter("MName"));
					pst2.setString(4,request.getParameter("Moccupation"));
					pst2.setString(5,request.getParameter("brother"));
					pst2.setString(6,request.getParameter("sister"));
					pst2.setString(7,request.getParameter("unclep"));
					pst2.setString(8,request.getParameter("unclem"));
					pst2.setString(9,request.getParameter("Aunt"));
					pst2.setString(10,request.getParameter("Fincome"));
				 
				 int rows1=pst2.executeUpdate();
				
					if(rows1!=0) {
						System.out.println("inserted");
			
					}
				PreparedStatement pst1= con.prepareStatement("insert into astro_background(D_O_B,BIRTH_TIME,BIRTH_PLACE,RASHI,NADI,MANGLIK,GOTRA,DEVAK,GAAN)"
						+ " values(?,?,?,?,?,?,?,?,?)");
				pst1.setString(1,request.getParameter("dob"));
				pst1.setString(2,request.getParameter("BirthTime"));
				pst1.setString(3,request.getParameter("BirthPlace"));
				pst1.setString(4,request.getParameter("Rashi"));
				pst1.setString(5,request.getParameter("Nadi"));
				pst1.setString(6,request.getParameter("Manglik"));
				pst1.setString(7,request.getParameter("Gotra"));
				pst1.setString(8,request.getParameter("Devak"));
				pst1.setString(9,request.getParameter("Gaan"));
				int rows2=pst2.executeUpdate();
				
				if(rows2!=0) {
					System.out.println("inserted");
		
				}
				PreparedStatement pst3= con.prepareStatement("insert into partner_ref(AGE,QUALIFICATION,JOB_SPECIFICATION,ANNUAL_INCOME,COMPLEXION,HEIGHT,BODY_TYPE,DIET,MANGLIK,MOTHER_TONGUE,RELIGION,CASTE,COUNTRY_OF_RESIDENCE,STATE,MARITAL_STATUS,RESIDENCE_STATUS)"
						+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
				pst3.setString(1,request.getParameter("Age"));
				pst3.setString(2,request.getParameter("Qualification"));
				pst3.setString(3,request.getParameter("JobSpecification"));
				
				pst3.setString(4,request.getParameter("AnnualIncome"));
				pst3.setString(5,request.getParameter("Complexion"));
				pst3.setString(6,request.getParameter("Height"));
				pst3.setString(7,request.getParameter("BodyType"));
				pst3.setString(8,request.getParameter("Diet"));
				pst3.setString(9,request.getParameter("Manglik"));
				pst3.setString(10,request.getParameter("MotherTounge"));
				pst3.setString(11,request.getParameter("Religion"));
				pst3.setString(12,request.getParameter("Caste"));
				pst3.setString(13,request.getParameter("CountryOfResidence"));
				pst3.setString(14,request.getParameter("State"));
				pst3.setString(15,request.getParameter("MaritalStatus"));
				pst3.setString(16,request.getParameter("ResidenceStatus"));
			
				int rows3=pst3.executeUpdate();
				
				if(rows3!=0) {
					System.out.println("inserted");
					/*RequestDispatcher dispatcher = request.getRequestDispatcher("Profile");
					dispatcher.forward(request, response);*/
					response.sendRedirect(request.getContextPath() + "/info1.jsp");

		
				}
				
			con.close();
		
		
			
			} catch (SQLException e) {

			e.printStackTrace();
			
		}

			
		}

	}

