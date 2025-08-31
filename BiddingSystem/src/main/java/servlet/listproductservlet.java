package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.listproduct;
import utill.adminDbutill;

import java.util.List;

/**
 * Servlet implementation class listproductservlet
 */
@WebServlet("/listproductservlet")
public class listproductservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
				List<listproduct> itemdetail = adminDbutill.getproductDetails();
				request.setAttribute("itemdetail", itemdetail);
			
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("listproduct servlet is not connected!");
		}
			RequestDispatcher dis = request.getRequestDispatcher("itemdetail.jsp");
			dis.forward(request, response);
			

		}
		
		
		
		
		
	}


