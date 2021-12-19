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
 * Servlet implementation class UpdatePatientServlet
 */
@WebServlet("/UpdatePatientServlet")
public class UpdatePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int iduser = Integer.parseInt(request.getParameter("iduser"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String Blood_group = request.getParameter("Blood_group");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue = PatientDBUtil.updatepatient(iduser,name,age,phone,address,gender,Blood_group,description);
		
		if(isTrue == true) {
			
			List<Patient> pDetails = PatientDBUtil.getPatientDetails(iduser);
			request.setAttribute("pDetails", pDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("patientDetails.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Patient> pDetails = PatientDBUtil.getPatientDetails(iduser);
			request.setAttribute("pDetails", pDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("patientDetails.jsp");
			dis.forward(request, response);
		}
	}

}
