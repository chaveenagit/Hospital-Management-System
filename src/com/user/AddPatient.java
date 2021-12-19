/**
 * IT19114736
 * De Silva K.C.C.C
 * 
 */

package com.user;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddPatient
 */
@WebServlet("/AddPatient")
public class AddPatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//store values which pass by view
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String Blood_group = request.getParameter("Blood_group");
		String description = request.getParameter("description");
		
		boolean isTrue;
		isTrue = PatientDBUtil.addpatient(id,name, age, phone, address, gender, Blood_group, description);
		
		if(isTrue == true) {
			
			RequestDispatcher d = request.getRequestDispatcher("successpage.jsp");
			d.forward(request, response);
			
		} else {
			RequestDispatcher d2 = request.getRequestDispatcher("unsuccesspage.jsp");
			d2.forward(request, response);
		}
		
	}
;
}
