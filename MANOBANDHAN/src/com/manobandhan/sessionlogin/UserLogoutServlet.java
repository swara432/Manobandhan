
package com.manobandhan.sessionlogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UserLogoutServlet")
public class UserLogoutServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

   public UserLogoutServlet() {
       super();
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       HttpSession session = request.getSession(false);
       System.out.println("Logout");
       
       System.out.println(session);
       /*
       if (session != null) {
           session.removeAttribute("user");
            
           RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
           dispatcher.forward(request, response);
       }
       */
       //RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
       //dispatcher.forward(request, response);
   }
}

