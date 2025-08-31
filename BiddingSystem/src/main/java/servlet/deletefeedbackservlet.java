package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.feedbackdetails;
import utill.adminDbutill;

/**
 * Servlet implementation class deletefeedbackservlet
 */
@WebServlet("/deletefeedbackservlet")
public class deletefeedbackservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = adminDbutill.deletefeedback(id);
		
		if(isTrue==true) {
			List<feedbackdetails> feedbackdetail = adminDbutill.getfeedbackDetails();
			request.setAttribute("feedbackdetail", feedbackdetail);
			
			RequestDispatcher dis = request.getRequestDispatcher("Feedbacklist.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis1 = request.getRequestDispatcher("unsuccess.jsp");
			dis1.forward(request,response);
		}
	}

}
