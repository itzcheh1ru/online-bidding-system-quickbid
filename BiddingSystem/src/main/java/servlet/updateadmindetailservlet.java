package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utill.adminDbutill;


@WebServlet("/updateadmindetailservlet")
public class updateadmindetailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("id");
		String aname =request.getParameter("aname");
		String atelephone =request.getParameter("atelephone");
		String aNIC =request.getParameter("aNIC");
		String ausername =request.getParameter("ausername");
		String apassword =request.getParameter("apassword");
		
		boolean isTrue;
		
		isTrue = adminDbutill.updateadmindetail(id,aname,atelephone,aNIC,ausername,apassword);
		
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
