<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Payment</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    
    <style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #FFFFFF, #FFFFFF);
        height: 100vh;
        display: flex;
        flex-direction: column;
        margin: 0;
        padding: 20px;
    }

    .container {
        max-width: 800px;
        margin: 50px auto;
        background-color: #fff;
        padding: 30px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #333;
    }

    /* Table Styling */
    .payment-table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    .payment-table th, .payment-table td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: left;
        color: #2c3e50; /* Font color for table content */
    }

    .payment-table th {
        background-color: #1abc9c;
        color: white;
        text-transform: none;
    }

    .payment-table td {
        background-color: #fafafa;
        color: #2c3e50; /* Font color for table data */
    }

    .receipt-image {
        max-width: 150px;
        height: auto;
    }

    /* Button Styling */
    .button {
        border: 2px solid #2ecc71;
        padding: 14px 40px;
        border-radius: 24px;
        background: none;
        color: black;
        cursor: pointer;
        transition: 0.25s;
        text-align: center;
        font-size: 14px;
        margin: 5px;
    }

    .button:hover {
        background-color: #2ecc71;
        color: white;
    }

    .delete-btn {
        border-color: #e74c3c;
    }

    .delete-btn:hover {
        background-color: #e74c3c;
        color: white;
    }

    .edit-btn {
        border-color: #f1c40f;
    }

    .edit-btn:hover {
        background-color: #f1c40f;
        color: white;
    }

    .create-btn {
        border-color: #9b59b6;
    }

    .create-btn:hover {
        background-color: #9b59b6;
        color: white;
    }

    .inline-form {
        display: inline;
    }

    footer {
        margin-top: auto;
    }
</style>

</head>
<body>

    <!-- Navbar -->
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
        <p class="my-0 mr-md-auto font-weight-normal" style="font-size: 180%;"><b>Quick Bid.Lk</b></p>
    </div>

    <!-- Payment Details Section -->
    <div class="container">
        <h2>PAYMENT DETAILS</h2>
        <table class="payment-table">
            <tr>
                <th>ID</th>
                <td>${payment.id}</td>
            </tr>
            <tr>
                <th>User ID</th>
                <td>${payment.userId}</td>
            </tr>
            <tr>
                <th>Amount</th>
                <td>${payment.amount}</td>
            </tr>
            <tr>
                <th>Payment Type</th>
                <td>${payment.paymentType}</td>
            </tr>
            <tr>
                <th>Payment ID</th>
                <td>${payment.itemName}</td>
            </tr>
            <tr>
                <th>Receipt</th>
                <td>
                    <c:if test="${not empty payment.recite}">
                        <img src="PaymentServlet?action=showImage&id=${payment.id}" alt="Receipt Image" class="receipt-image" />
                    </c:if>
                </td>
            </tr>
        </table>

        <!-- Edit and Delete Actions -->
        <div class="actions">
            <a href="PaymentServlet?action=edit&id=${payment.id}" class="button edit-btn">Edit</a>
            <form action="PaymentServlet?action=delete" method="post" class="inline-form">
                <input type="hidden" name="id" value="${payment.id}" />
                <input type="submit" value="Delete" class="button delete-btn" onclick="return confirm('Are you sure you want to delete this payment?');" />
            </form>
        </div>

        <br />
        <a href="sellerinsertupdate.jsp" class="button create-btn">Sign up</a>
    </div>

    <!-- Footer -->
    <footer class="pt-4 my-md-5 pt-md-5 border-top">
        <div class="row">
            <div class="col-12 col-md mr-5">
                <small class="d-block mb-3 text-muted">© Quick Bid.Lk 2024-2025</small>
            </div>
            <div class="col-6 col-md">
                <h5>Features</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Cool stuff</a></li>
                    <li><a class="text-muted" href="#">Random feature</a></li>
                    <li><a class="text-muted" href="#">Team feature</a></li>
                    <li><a class="text-muted" href="#">Stuff for developers</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>Resources</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Resource</a></li>
                    <li><a class="text-muted" href="#">Another resource</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>About</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Team</a></li>
                    <li><a class="text-muted" href="#">Privacy</a></li>
                    <li><a class="text-muted" href="#">Terms</a></li>
                </ul>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6Hty5KVphtPhzWj9WO1clHTMGaIFxQAr5D2VnvZV8+DkUMQG/"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIyNqGTZ5t6AOMpAwaM0yYFzM5DQvG8X3LQ6pwg"
            crossorigin="anonymous"></script>
</body>
</html>
