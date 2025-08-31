package servlet;

import dao.PaymentDAO;
import model.Payment;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

@MultipartConfig
public class PaymentServlet extends HttpServlet {
    private PaymentDAO paymentDAO;

    public void init() {
        paymentDAO = new PaymentDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String action = request.getParameter("action");
        try {
            switch (action) {
                case "new":
                    showNewForm(request, response);
                    break;
                case "insert":
                    insertPayment(request, response);
                    break;
                case "delete":
                    deletePayment(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "update":
                    updatePayment(request, response);
                    break;
                case "view":
                    showViewPayment(request, response); // New case to view a specific payment
                    break;
                 // other cases
                case "showImage":
                    showImage(request, response);
                    break;
                default:
                    listPayments(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void insertPayment(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        double amount = Double.parseDouble(request.getParameter("amount")); 
        String paymentType = request.getParameter("paymentType");
        Part filePart = request.getPart("recite");
        byte[] recite = filePart.getInputStream().readAllBytes();
        String itemName = request.getParameter("itemName");

        Payment newPayment = new Payment(userId, amount, paymentType, recite, itemName);
        int insertedId = paymentDAO.insertPayment(newPayment); // Assuming this method returns the inserted payment ID

        // Redirect to show only the created payment
        response.sendRedirect("PaymentServlet?action=view&id=" + insertedId);
    }


    private void updatePayment(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
    	
    	 System.out.println("Updating payment...");

    	    String idString = request.getParameter("id");
    	    System.out.println("ID received: " + idString); // Check the value of ID

    	    if (idString == null || idString.isEmpty()) {
    	        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing or invalid payment ID");
    	        return;
    	    }

     

        int id = Integer.parseInt(idString);  // Parse the id safely now

        int userId = Integer.parseInt(request.getParameter("userId"));
        double amount = Double.parseDouble(request.getParameter("amount"));
        String paymentType = request.getParameter("paymentType");

        // File Part for recite
        Part filePart = request.getPart("recite");
        byte[] recite = filePart.getInputStream().readAllBytes();
        
        String itemName = request.getParameter("itemName");

        // Create a new Payment object and update it
        Payment newPayment = new Payment(userId, amount, paymentType, recite, itemName);
        int insertedId = paymentDAO.insertPayment(newPayment); // Assuming this method returns the inserted payment ID

        // Redirect to show only the created payment
        response.sendRedirect("PaymentServlet?action=view&id=" + insertedId);
    }


    private void deletePayment(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        paymentDAO.deletePayment(id);
        response.sendRedirect("PaymentServlet?action=new");
    }


    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println("Editing Payment ID: " + id); // Debugging output
        Payment existingPayment = paymentDAO.selectPayment(id);
        request.setAttribute("payment", existingPayment); // Ensure existingPayment is not null
        RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/edit-payment.jsp");
        dispatcher.forward(request, response);
    }


    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/add-payment.jsp");
        dispatcher.forward(request, response);
    }

    private void listPayments(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Payment> listPayments = paymentDAO.selectAllPayments(); // Ensure this is correctly fetching data
        request.setAttribute("paymentList", listPayments); // Attach the list to the request
        RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/list-payments.jsp");
        dispatcher.forward(request, response); // Forward to the JSP
    }
    private void showViewPayment(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Payment payment = paymentDAO.selectPayment(id); // Assuming this method retrieves a payment by ID
        request.setAttribute("payment", payment); // Set the payment as a request attribute
        RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/view-payment.jsp");
        dispatcher.forward(request, response);
    }
 // Method to handle image display
    private void showImage(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Payment payment = paymentDAO.selectPayment(id);
        if (payment != null && payment.getRecite() != null) {
            response.setContentType("image/png"); // Adjust this based on your image type
            response.getOutputStream().write(payment.getRecite());
            response.getOutputStream().flush();
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

}