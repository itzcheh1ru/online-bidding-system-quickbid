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


@WebServlet("/admindetailservlet")
public class admindetailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
				List<admindetail> admindetail = adminDbutill.getadminDetails();
				request.setAttribute("admindetail", admindetail);
		
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("admindetail servlet is not connected!");
		}
			RequestDispatcher dis = request.getRequestDispatcher("viewadmindetail.jsp");
			dis.forward(request, response);
	}

}
