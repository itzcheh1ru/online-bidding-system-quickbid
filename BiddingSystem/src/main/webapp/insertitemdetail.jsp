<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert and update Item details</title>

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
            width: 50%; /* Adjusted width for balanced sides */
            min-width: 300px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            margin: auto;
        }

        .form-container h4 {
            color: #2c3e50;
            text-transform: uppercase;
            font-weight: 600;
            margin-bottom: 25px;
            letter-spacing: 2px;
        }
        
        .form-container h4::after {
            content: "";
            display: block;
            width: 80px; /* Underline width */
            height: 4px; /* Underline height */
            background-color: #3498db; /* Color of the underline */
            margin: 10px auto; /* Center the underline */
        }

        .form-group input {
            display: block;
            margin: 20px auto;
            text-align: center;
            width: 90%; /* Centered and adjusted input width */
            border: 2px solid #3498db;
            border-radius: 24px;
            padding: 12px;
            background: none;
            outline: none;
            color: black;
            transition: 0.25s;
        }

        .form-group input:focus {
            width: 85%;
            border-color: #1565c0;
        }

        .form-group label {
            display: block;
            margin-bottom: 10px;
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

        .c {
            color: black;
        }
    </style>

    <script>
        function validateForm() {
            const password = document.getElementById("password").value;
            const confirmPassword = document.getElementById("confirm-password").value;
            if (password !== confirmPassword) {
                alert("Passwords do not match. Please try again.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
        <p class="my-0 mr-md-auto font-weight-normal" style="font-size: 180%;"><b>Quick Bid.Lk</b></p>
        <nav class="my-2 my-md-0 mr-md-3">
            <a class="p-2 text-dark" href="home.jsp">Home</a>
            <a class="p-2 text-dark" href="itemdetail.jsp">Products</a>
            <a class="p-2 text-dark" href="About.jsp">About Us</a>
            <a class="p-2 text-dark" href="ContactUs.jsp">Help</a>
            <a class="p-2 text-dark" href="Feedbacklist.jsp">Feedback</a>
        </nav>
    </div>

    <form action="insert1" method="post" class="form-container" onsubmit="return validateForm()">
        <h4>Add Product</h4>

        <div class="form-group">
            <label for="id" class="c">Product ID</label>
            <input type="text" name="pid" placeholder="Enter Product ID" required>
        </div>
        <div class="form-group">
            <label for="name" class="c">Product Name</label>
            <input type="text" name="name" placeholder="Enter Product Name">
        </div>    
        <div class="form-group">
            <label for="des" class="c">Product Description</label>
            <input type="text" name="des" placeholder="Enter Product Description">
        </div>
        <div class="form-group">
            <label for="bprice" class="c">Bid Price</label>
            <input type="text" name="bprice" placeholder="Enter Bid Price">
        </div>
        <div class="form-group">
            <label for="sid" class="c">Seller ID</label>
            <input type="text" name="sid" placeholder="Enter Seller ID">
        </div>
        <div class="form-group">
            <label for="bid" class="c">Product Category Number</label>
            <input type="text" name="bid" placeholder="Enter Product Category Number">
        </div>

        <button type="submit" class="btn-primary">Insert Item</button>
    </form><br>    

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
                    <li><a class="text-muted" href="#">Another one</a></li>
                    <li><a class="text-muted" href="#">Last time</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>Resources</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Resource</a></li>
                    <li><a class="text-muted" href="#">Resource name</a></li>
                    <li><a class="text-muted" href="#">Another resource</a></li>
                    <li><a class="text-muted" href="#">Final resource</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>About</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Team</a></li>
                    <li><a class="text-muted" href="#">Locations</a></li>
                    <li><a class="text-muted" href="#">Privacy</a></li>
                    <li><a class="text-muted" href="#">Terms</a></li>
                </ul>
            </div>
        </div>
    </footer>

</body>
</html>
