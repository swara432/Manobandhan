package com.manobandhan.profile;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.manobandhan.dao.ProfileDao;

/**
 * Servlet implementation class Personal_info
 */
@WebServlet("/Personal_info")
public class Personal_info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int info_id=Integer.parseInt(request.getParameter("infoId"));
		ProfileDao profileDao = new ProfileDao();

		try {
			Profile_info profile=profileDao.getProfile(info_id);
		
			//UserInfo user = userDao.checkLogin(username, password);
			String Page = "login.jsp";

			if (profile != null) {
				HttpSession session = request.getSession();
				//session.setAttribute("user", user);
				Profile_info profile1 = profileDao.getProfile(profile.getInfoId());
				//System.out.print("AGE = " + profile.getAge());
				session.setAttribute("Age", profile1.getAge());
				session.setAttribute("Marital_status", profile1.getMarital_Status());
				session.setAttribute("Education", profile1.getQualification());
				session.setAttribute("Occupation", profile1.getOccupation());
				session.setAttribute("Annual_Income", profile1.getAnnual_Income());
				session.setAttribute("Height", profile1.getHeight());
				session.setAttribute("Weight", profile1.getWeight());
				session.setAttribute("Blood_group", profile1.getBlood_Group());
				session.setAttribute("Complexion", profile1.getComplexion());
				session.setAttribute("Language", profile1.getLanguage());
				session.setAttribute("Body_Type", profile1.getBody_Type());
				session.setAttribute("Mother_Tongue", profile1.getMother_Tounge());
				session.setAttribute("Drink", profile1.getDrink());
				session.setAttribute("Smoke", profile1.getSmoke());
				
				Page = "profile.jsp";
		
			RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
			dispatcher.forward(request, response);
		
			}
	} catch (SQLException | ClassNotFoundException ex) {
		throw new ServletException(ex);

}
	}
}
		