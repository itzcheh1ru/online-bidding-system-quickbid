package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utill.adminDbutill;

@WebServlet("/sellerinsertservlet")
public class sellerinsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("Sellername");
		String phone = request.getParameter("SellerTelephone");
		String NIC = request.getParameter("SellerNIC");
		String username = request.getParameter("Susername");
		String password = request.getParameter("Spassword");
		
		boolean isTrue;
		
		isTrue=adminDbutill.insertseller(name,phone,NIC,username,password);
		
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
