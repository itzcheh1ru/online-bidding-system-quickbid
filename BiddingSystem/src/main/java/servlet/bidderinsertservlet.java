package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utill.adminDbutill;

/**
 * Servlet implementation class bidderinsertservlet
 */
@WebServlet("/bidderinsertservlet")
public class bidderinsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("Biddername");
		String phone = request.getParameter("BidderTelephone");
		String NIC = request.getParameter("BidderNIC");
		String username = request.getParameter("Busername");
		String password = request.getParameter("Bpassword");
		
		boolean isTrue;
		
		isTrue=adminDbutill.insertbidder(name,phone,NIC,username,password);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
