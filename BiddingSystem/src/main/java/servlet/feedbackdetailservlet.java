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


@WebServlet("/feedbackdetailservlet")
public class feedbackdetailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			List<feedbackdetails> feedbackdetail = adminDbutill.getfeedbackDetails();
			request.setAttribute("feedbackdetail", feedbackdetail);
		
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("feedback servlet is not connected!");
		}
			RequestDispatcher dis = request.getRequestDispatcher("Feedbacklist.jsp");
			dis.forward(request, response);
		}

}
