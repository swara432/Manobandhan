package com.manobandhan.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.tag.common.sql.ResultImpl;

import com.manobandhan.dao.AstroDao;
import com.manobandhan.dao.FamilyDao;
import com.manobandhan.dao.LoginDao;
import com.manobandhan.dao.PartnerDao;
import com.manobandhan.profile.AstroInfo;
import com.manobandhan.profile.FamilyInfo;
import com.manobandhan.profile.PartnerInfo;
import com.manobandhan.dao.ProfileDao;
import com.manobandhan.profile.Profile_info;
import java.sql.*;
import java.util.Base64;

@WebServlet("/LoginInfo")
public class LoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("LoginController"+username);

		LoginDao loginDao = new LoginDao();
		ProfileDao profileDao = new ProfileDao();
		PartnerDao partnerDao=new PartnerDao();
		FamilyDao familyDao=new FamilyDao();
		AstroDao astroDao=new AstroDao();
		try {
			long  id = loginDao.checkLogin(username, password);
			String Page = null;
			
			System.out.println("Login Id ==>"+ id);
			
			if (id > 0) {
				
				HttpSession session = request.getSession();
				
				//session.setAttribute("user", id);
				
				session.setAttribute("user", id);
				
				Profile_info profile = profileDao.getProfile(id);
			
				
				session.setAttribute("profilemanageby", profile.getManageBy());
				session.setAttribute("name", profile.getName());
				session.setAttribute("age", profile.getAge());
				session.setAttribute("marital_status", profile.getMarital_Status());
				session.setAttribute("education", profile.getQualification());
				
				session.setAttribute("occupation", profile.getOccupation());
				session.setAttribute("Annual_Income", profile.getAnnual_Income());
				session.setAttribute("height", profile.getHeight());
				session.setAttribute("weight", profile.getWeight());
				session.setAttribute("blood_group", profile.getBlood_Group());
				session.setAttribute("complexion", profile.getComplexion());
				session.setAttribute("language", profile.getLanguage());
				session.setAttribute("body_type", profile.getBody_Type());
				session.setAttribute("Mother_tongue", profile.getMother_Tounge());
				session.setAttribute("caste", profile.getCaste());
				session.setAttribute("Drink", profile.getDrink());
				session.setAttribute("smoke", profile.getSmoke());
				
				// Image 
				String imgData = profile.getPhoto(); ;
				//String encode = Base64.getEncoder().encodeToString(imgData);
				//session.setAttribute("Photo", encode);
				
				//profile.setPhoto(ResultImpl.getBytes("IMAGE_PATH"));

		
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
				
				FamilyInfo family= familyDao.getFamily(id);
				
				session.setAttribute("Fname", family.getFname());
				session.setAttribute("FOccupation", family.getFOccupation());
				session.setAttribute("MOccupation", family.getMOccupation());
				session.setAttribute("Mname", family.getMname());
				session.setAttribute("Brothers", family.getBrothers());
				session.setAttribute("Sisters", family.getSisters());
				session.setAttribute("uncle", family.getUncle());
				session.setAttribute("unclem", family.getUnclem());
				session.setAttribute("aunt", family.getAunt());
				session.setAttribute("FIncome", family.getFIncome());
				
				
				AstroInfo Astro=astroDao.getAstro(id);
				
				session.setAttribute("DOB", Astro.getDOB());
				session.setAttribute("BirthTime", Astro.getBirthTime());
				session.setAttribute("BirthPlace", Astro.getBirthPlace());
				session.setAttribute("Rashi", Astro.getRashi());
				session.setAttribute("Nadi", Astro.getNadi());
				session.setAttribute("Manglik", Astro.getManglik());
				session.setAttribute("Gaan", Astro.getGaan());
				session.setAttribute("Gotra", Astro.getGotra());
				session.setAttribute("Devak", Astro.getDevak());
				
				
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
