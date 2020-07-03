package Sessionlogin1;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Profile.ProfileDao;
import Profile.ProfileInfo;

import java.sql.*;

@WebServlet("/LoginInfo")
public class LoginInfo extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		LoginDao userDao = new LoginDao();
		ProfileDao profileDao = new ProfileDao();

		try {
			UserInfo user = userDao.checkLogin(username, password);
			String Page = "login.jsp";

			if (user != null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				ProfileInfo profile = profileDao.getProfile(user.getInfoId());
				System.out.print("AGE = " + profile.getAge());
				
				session.setAttribute("profilemanageby", profile.getManageBy());
				session.setAttribute("name", profile.getName());
				session.setAttribute("age", profile.getAge());
				session.setAttribute("marital_status", profile.getMarital_Status());
				session.setAttribute("education", profile.getQualification());
				System.out.print("AGE = " + profile.getMarital_Status());
				session.setAttribute("occupation", profile.getOcuupation());
				session.setAttribute("annual_income", profile.getAnnual_Income());
				session.setAttribute("height", profile.getHeight());
				session.setAttribute("weight", profile.getWeight());
				session.setAttribute("body_group", profile.getBlood_Group());
				session.setAttribute("complexion", profile.getComplexion());
				session.setAttribute("body_type", profile.getBody_Type());
				session.setAttribute("language", profile.getLanguage());
				session.setAttribute("Mother_tongue", profile.getMother_Tounge());
				session.setAttribute("caste", profile.getCaste());
				session.setAttribute("Drink", profile.getDrink());
				session.setAttribute("smoke", profile.getSmoke());
				
				Page = "profile.jsp";
			} else {
				String message = "Invalid email/password";
				request.getSession().setAttribute("message", message);
				// response.getOutputStream().print(message);
				Page = "Login.jsp";
			}

			RequestDispatcher dispatcher = request.getRequestDispatcher(Page);
			dispatcher.forward(request, response);

		} catch (SQLException | ClassNotFoundException ex) {
			throw new ServletException(ex);

		}
	}
}
