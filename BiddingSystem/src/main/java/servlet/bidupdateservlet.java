package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utill.adminDbutill;

@WebServlet("/bidupdateservlet")
public class bidupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("id");
		String description =request.getParameter("pdescription");
		String sellerid =request.getParameter("psellerid");
		String bidderid =request.getParameter("pbidderid");
		
		boolean isTrue;
		
		isTrue = adminDbutill.updatebid(id,description,sellerid,bidderid);
		
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
