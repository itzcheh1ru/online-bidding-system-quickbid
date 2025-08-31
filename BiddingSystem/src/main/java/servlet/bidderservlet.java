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

import model.bidder;
import utill.adminDbutill;



/**
 * Servlet implementation class bidderservlet
 */
@WebServlet("/bidderservlet")
public class bidderservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String busernameu = request.getParameter("busername");
		String bpasswordu = request.getParameter("bpassword");
		boolean isTrue;
		
		isTrue = adminDbutill.validate1(busernameu, bpasswordu);
		
		if(isTrue == true) {
		
			List<bidder> biddetails=adminDbutill.getbidder(busernameu);
			request.setAttribute("biddetails", biddetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("bidderaccount.jsp");
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
