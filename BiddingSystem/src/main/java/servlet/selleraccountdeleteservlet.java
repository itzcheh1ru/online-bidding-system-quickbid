package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.sellerdetail;
import utill.adminDbutill;

@WebServlet("/selleraccountdeleteservlet")
public class selleraccountdeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sNIC = request.getParameter("sNIC");
		boolean isTrue;
		
		isTrue = adminDbutill.deleteselleraccount(sNIC);
		
		if(isTrue==true) {
			List<sellerdetail> sellerdetail = adminDbutill.getsellerDetails();
			request.setAttribute("sellerdetail", sellerdetail);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewsellerdetail.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis1 = request.getRequestDispatcher("unsuccess.jsp");
			dis1.forward(request,response);
		}
	}

}
