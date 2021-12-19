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


@WebServlet("/updateBillServlet")
public class updateBillServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bId = request.getParameter("bId");
		int pId = Integer.parseInt(request.getParameter("pId"));
		int roomChar = Integer.parseInt(request.getParameter("roomChar"));
		int docFee = Integer.parseInt(request.getParameter("docFee"));
		int testsFee = Integer.parseInt(request.getParameter("testsFee"));
		int otherCha = Integer.parseInt(request.getParameter("otherFee"));
		int Total = Integer.parseInt(request.getParameter("totlBill"));
		
	boolean isTrue;
	
	isTrue = billDBUtil.updatebill(bId, pId, roomChar, docFee, testsFee, otherCha, Total);
	
	if(isTrue == true) {
		
		List<bill> billDetails = billDBUtil.getbillDetails(bId);
		request.setAttribute("billDetails", billDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("BillDetail.jsp");
		dis.forward(request, response);
	}
	else {
		
		List<bill> billDetails = billDBUtil.getbillDetails(bId);
		request.setAttribute("billDetails", billDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("BillDetail.jsp");
		dis.forward(request, response);
		
	}
			
		
	}

}
