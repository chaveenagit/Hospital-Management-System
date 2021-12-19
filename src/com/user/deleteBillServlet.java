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


@WebServlet("/deleteBillServlet")
public class deleteBillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bId = request.getParameter("bId");
		
		boolean isTrue;
		
		isTrue = billDBUtil.deletebill(bId);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("BillInsert.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			List<bill> bill = billDBUtil.getbillDetails(bId);
			request.setAttribute("bill",bill);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("billDetail.jsp");
			dispatcher.forward(request, response);
		}
	}

}
