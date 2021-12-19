/*IT19117874
 * Amarasinghe W.K.P.G
 */
package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BillInsertServlet")
public class BillInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String billNo = request.getParameter("bId");
		int patientId = Integer.parseInt(request.getParameter("pId"));
		int roomChargers = Integer.parseInt(request.getParameter("roomChar"));
		int doctorFee = Integer.parseInt(request.getParameter("docFee"));
		int testFee = Integer.parseInt(request.getParameter("testsFee"));
		int otherChargers = Integer.parseInt(request.getParameter("otherFee"));
		int total = Integer.parseInt(request.getParameter("totlBill"));
		
		boolean isTrue;
		
		isTrue = billDBUtil.insertbill(billNo, patientId, roomChargers, doctorFee, testFee, otherChargers, total);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("successBill.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessBill.jsp");
			dis2.forward(request, response);
			
			
		}
		
		
	}

}
