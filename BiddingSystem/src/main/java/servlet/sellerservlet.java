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

import model.seller;
import utill.adminDbutill;

/**
 * Servlet implementation class sellerservlet
 */
@WebServlet("/sellerservlet")
public class sellerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String susernameu = request.getParameter("susername");
		String spasswordu = request.getParameter("spassword");
		boolean isTrue;
		
		isTrue = adminDbutill.validate2(susernameu, spasswordu);
		
		if(isTrue == true) {
		
			List<seller> seldetails=adminDbutill.getseller(susernameu);
			request.setAttribute("seldetails", seldetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("selleraccount.jsp");
			dis.forward(request,response);
			
		}
		else {
			out.println("<script type ='text/javascript'>");
			out.println("alert('Your username or password is incorrect!!');");
			out.println("location='bidderlogin.jsp'");
			out.println("</script>");
		}
		
		
	
	}

}