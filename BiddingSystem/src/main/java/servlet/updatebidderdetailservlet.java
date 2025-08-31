package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utill.adminDbutill;

@WebServlet("/updatebidderdetailservlet")
public class updatebidderdetailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("id");
		String bname =request.getParameter("bname");
		String btelephone =request.getParameter("btelephone");
		String bNIC =request.getParameter("bNIC");
		String busername =request.getParameter("busername");
		String bpassword =request.getParameter("bpassword");
		
		boolean isTrue;
		
		isTrue = adminDbutill.updatebidderdetail(id,bname,btelephone,bNIC,busername,bpassword);
		
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
