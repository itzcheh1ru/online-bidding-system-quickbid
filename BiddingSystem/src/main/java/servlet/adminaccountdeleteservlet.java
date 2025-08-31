package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.admindetail;
import utill.adminDbutill;


@WebServlet("/adminaccountdeleteservlet")
public class adminaccountdeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aNIC = request.getParameter("aNIC");
		boolean isTrue;
		
		isTrue = adminDbutill.deleteadminaccount(aNIC);
		
		if(isTrue==true) {
			List<admindetail> admindetail = adminDbutill.getadminDetails();
			request.setAttribute("admindetail", admindetail);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewadmindetail.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis1 = request.getRequestDispatcher("unsuccess.jsp");
			dis1.forward(request,response);
		}
	}

}
