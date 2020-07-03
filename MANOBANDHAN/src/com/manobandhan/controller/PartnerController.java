package com.manobandhan.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.manobandhan.dao.LoginDao;
import com.manobandhan.dao.PartnerDao;
import com.manobandhan.profile.PartnerInfo;


@WebServlet("/PartnerController")
public class PartnerController extends HttpServlet {
       

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		LoginDao loginDao = new LoginDao();
		PartnerDao partnerDao=new PartnerDao();
		try {
			long  id = loginDao.checkLogin(username, password);
			String Page = null;
			
			System.out.println("Login Id ==>"+ id);
			
			if (id > 0) {
				
				HttpSession session = request.getSession();
				
				session.setAttribute("user", id);
				PartnerInfo partner = partnerDao.getPartner(id);
			
				
				session.setAttribute("PAge", partner.getPAge());
				session.setAttribute("PQualification", partner.getPQualification());
				session.setAttribute("PJobSpecification", partner.getPJobSpecification());
				session.setAttribute("PAnnualIncome", partner.getPAnnualIncome());
				session.setAttribute("PComplexion", partner.getPComplexion());
				session.setAttribute("PHeight", partner.getPHeight());
				session.setAttribute("PBodyType", partner.getPBodyType());
				session.setAttribute("PDiet", partner.getPDiet());
				session.setAttribute("PManglik", partner.getPManglik());
				session.setAttribute("PMotherTongue", partner.getPMotherTongue());
				session.setAttribute("PReligion", partner.getPReligion());
				session.setAttribute("PCaste", partner.getPCaste());
				session.setAttribute("PCountryOfResidence", partner.getPCountryOfResidence());
				session.setAttribute("PState", partner.getPState());
				session.setAttribute("PMaritalStatus", partner.getPMaritalStatus());
				session.setAttribute("PResidenceStatus", partner.getPResidenceStatus());
				
				
			Page = "profile.jsp";
		} else {
			request.getSession().setAttribute("message", "Invalid email/password");
			Page = "index.jsp";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(Page);
		dispatcher.forward(request, response);

	} catch (SQLException | ClassNotFoundException ex) {
		throw new ServletException(ex);


	}

	}
}

