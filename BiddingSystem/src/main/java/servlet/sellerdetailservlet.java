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


@WebServlet("/sellerdetailservlet")
public class sellerdetailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
try {
			
			List<sellerdetail> sellerdetail = adminDbutill.getsellerDetails();
			request.setAttribute("sellerdetail", sellerdetail);
		
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("sellerdetail servlet is not connected!");
	}
		RequestDispatcher dis = request.getRequestDispatcher("viewsellerdetail.jsp");
		dis.forward(request, response);
	}

}
