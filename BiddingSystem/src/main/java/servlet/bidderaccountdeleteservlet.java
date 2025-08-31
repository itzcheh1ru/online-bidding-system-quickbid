package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.bidderdetail;
import utill.adminDbutill;


@WebServlet("/bidderaccountdeleteservlet")
public class bidderaccountdeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bNIC = request.getParameter("bNIC");
		boolean isTrue;
		
		isTrue = adminDbutill.deletebidderaccount(bNIC);
		
		if(isTrue==true) {
			List<bidderdetail> bidderdetail = adminDbutill.getbidderDetails();
			request.setAttribute("bidderdetail", bidderdetail);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewadmindetail.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis1 = request.getRequestDispatcher("unsuccess.jsp");
			dis1.forward(request,response);
		}
	}


}
