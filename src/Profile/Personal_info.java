package Profile;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Sessionlogin1.LoginDao;
import Sessionlogin1.UserInfo;

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
			ProfileInfo profile=ProfileDao.getProfile(info_id);
		
			//UserInfo user = userDao.checkLogin(username, password);
			String Page = "login.jsp";

			if (profile != null) {
				HttpSession session = request.getSession();
				//session.setAttribute("user", user);
				ProfileInfo profile1 = ProfileDao.getProfile(profile.getInfoId());
				//System.out.print("AGE = " + profile.getAge());
				session.setAttribute("age", profile1.getAge());
				session.setAttribute("marital_status", profile1.getMarital_Status());
				session.setAttribute("education", profile1.getQualification());
				session.setAttribute("occupation", profile1.getOcuupation());
				session.setAttribute("annual_income", profile1.getAnnual_Income());
				session.setAttribute("height", profile1.getHeight());
				session.setAttribute("weight", profile1.getWeight());
				session.setAttribute("body_group", profile1.getBlood_Group());
				session.setAttribute("complexion", profile1.getComplexion());
				session.setAttribute("body_type", profile1.getBody_Type());
				session.setAttribute("Mother_tongue", profile1.getMother_Tounge());
				session.setAttribute("Drink", profile1.getDrink());
				session.setAttribute("smoke", profile1.getSmoke());
				
				Page = "profile.jsp";
		
			RequestDispatcher dispatcher = request.getRequestDispatcher(Page);
			dispatcher.forward(request, response);
		
			}
	} catch (SQLException | ClassNotFoundException ex) {
		throw new ServletException(ex);

}
	}
}
		