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
 * Servlet implementation class PatientDetails
 */
@WebServlet("/PatientDetails")
public class PatientDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int iduser = Integer.parseInt(request.getParameter("id"));
	    
	    try {
		    List<Patient> pDetails = PatientDBUtil.validate(iduser);
		    request.setAttribute("pDetails", pDetails);
	    }
	    catch (Exception e) {
			e.printStackTrace();
		}
	    
	    RequestDispatcher dis = request.getRequestDispatcher("patientDetails.jsp");
	    dis.forward(request, response);
	}

}
