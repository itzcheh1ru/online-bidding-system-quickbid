<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Payment</title>
    
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
        }

        .form-container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            text-align: center;
            width: 30%;
            min-width: 300px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            margin: auto;
        }

        .form-container h2 {
            color: #2c3e50;
            text-transform: uppercase;
            font-weight: 600;
            margin-bottom: 25px;
            letter-spacing: 2px;
        }

        .form-container h2::after {
            content: "";
            display: block;
            width: 60px;
            height: 4px;
            background-color: #3498db;
            margin: 10px auto;
        }

        .form-group input,
        .form-group select {
            display: block;
            margin: 20px auto;
            text-align: center;
            width: 80%;
            border: 2px solid #3498db;
            border-radius: 24px;
            padding: 10px;
            background: none;
            outline: none;
            color: black;
            transition: 0.25s;
        }

        .form-group input:focus,
        .form-group select:focus {
            width: 85%;
            border-color: #1565c0;
        }

        .btn-primary {
            border: 2px solid #2ecc71;
            padding: 14px 40px;
            border-radius: 24px;
            background: none;
            color: black;
            cursor: pointer;
            transition: 0.25s;
        }

        .btn-primary:hover {
            background: #2ecc71;
            color: white;
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

    <form action="${pageContext.request.contextPath}/PaymentServlet?action=update" method="post" class="form-container" enctype="multipart/form-data">
        <h2>Edit Payment Details</h2>
        <input type="hidden" name="id" value="${payment.id}" />

        <div class="form-group">
            <label for="userId">User ID:</label>
            <input type="text" id="userId" name="userId" value="${payment.userId}" required>
        </div>
        
        <div class="form-group">
            <label for="amount">Amount:</label>
            <input type="text" id="amount" name="amount" value="${payment.amount}" required>
        </div>
        
        <div class="form-group">
            <label for="paymentType">Payment Type:</label>
            <input type="text" id="paymentType" name="paymentType" value="${payment.paymentType}" required>
        </div>
     
        <div class="form-group">
            <label for="itemName">Payment ID:</label>
            <input type="text" id="itemName" name="itemName" value="${payment.itemName}" required>
        </div>
        
        <div class="form-group">
            <label for="recite">Recite (Receipt):</label>
            <input type="file" id="recite" name="recite" accept="image/*">
        </div>
        
        <button type="submit" class="btn-primary">Update Payment</button>
    </form>

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
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGaIFxQAr5D2VnvZV8+DkUMQG/"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIyNqGTZ5t6AOMpAwaM0yYFzM5DQvG8X3LQ6pwg"
            crossorigin="anonymous"></script>
</body>
</html>
