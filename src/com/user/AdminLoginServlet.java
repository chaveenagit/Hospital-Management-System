/**
 * IT19114736
 * De Silva K.C.C.C
 * 
 */

package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String uname = request.getParameter("uname");
	    String pwd = request.getParameter("pass");
	    
	    try {
		    List<Admin> adminDetails = AdminDBUtil.validateAdmin(uname, pwd);
		    request.setAttribute("adminDetails",adminDetails);
	    }
	    catch (Exception e) {
			e.printStackTrace();
		}
	    
	    RequestDispatcher dis = request.getRequestDispatcher("adminaccount.jsp");
	    dis.forward(request, response);
	}

}
