/*IT19117874
 * Amarasinghe W.K.P.G
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


@WebServlet("/billServlet")
public class billServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int patientId =Integer.parseInt(request.getParameter("pId"));
		String billNo = request.getParameter("bNo");
		
		try {
			  List<bill> billDetails = billDBUtil.validate(billNo, patientId);
			  request.setAttribute("billDetails", billDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("BillDetail.jsp");
		dis.forward(request, response); 
	} 

}
