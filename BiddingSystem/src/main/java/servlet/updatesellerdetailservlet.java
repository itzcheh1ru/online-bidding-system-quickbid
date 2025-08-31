package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utill.adminDbutill;

@WebServlet("/updatesellerdetailservlet")
public class updatesellerdetailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("id");
		String sname =request.getParameter("sname");
		String stelephone =request.getParameter("stelephone");
		String sNIC =request.getParameter("sNIC");
		String susername =request.getParameter("susername");
		String spassword =request.getParameter("spassword");
		
		boolean isTrue;
		
		isTrue = adminDbutill.updatesellerdetail(id,sname,stelephone,sNIC,susername,spassword);
		
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
