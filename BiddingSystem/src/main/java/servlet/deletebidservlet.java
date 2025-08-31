package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.biddetails;
import model.feedbackdetails;
import utill.adminDbutill;

@WebServlet("/deletebidservlet")
public class deletebidservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = adminDbutill.deletebid(id);
		
		if(isTrue==true) {
			List<biddetails> biddetail = adminDbutill.getbidDetails();
			request.setAttribute("biddetail", biddetail);
			
			RequestDispatcher dis = request.getRequestDispatcher("Feedbacklist.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis1 = request.getRequestDispatcher("unsuccess.jsp");
			dis1.forward(request,response);
		}
	}

}
