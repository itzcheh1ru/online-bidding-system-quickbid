package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.admin;
import utill.adminDbutill;



/**
 * Servlet implementation class adminservlet
 */
@WebServlet("/adminservlet")
public class adminservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String ausernameu = request.getParameter("ausername");
		String apasswordu = request.getParameter("apassword");
		boolean isTrue;
		
		isTrue = adminDbutill.validate(ausernameu, apasswordu);
		
		if(isTrue == true) {
		
			List<admin> admdetails=adminDbutill.getadmin(ausernameu);
			request.setAttribute("admdetails", admdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("adminaccount.jsp");
			dis.forward(request,response);
			
		}
		else {
			out.println("<script type ='text/javascript'>");
			out.println("alert('Your username or password is incorrect!!');");
			out.println("location='Adminlogin.jsp'");
			out.println("</script>");
		}
		
		
	
	}

}
