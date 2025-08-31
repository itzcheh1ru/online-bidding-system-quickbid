package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utill.adminDbutill;


@WebServlet("/iteminsertservlet")
public class iteminsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("pid");
		String name = request.getParameter("name");
		String desc = request.getParameter("des");
		String price = request.getParameter("bprice");
		String sellerid = request.getParameter("sid");
		String bidderid = request.getParameter("bid");
		
		boolean isTrue;
		
		isTrue=adminDbutill.insertitem(id,name,desc,price,sellerid,bidderid);
		
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

