<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f8f9fa;
            color: #343a40;
        }
        .navbar {
            background-color: #343a40;
        }
        .navbar p {
            color: white;
        }
        .navbar a {
            color: white;
        }
        .card {
            border: none;
            transition: transform 0.3s;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            transition: background-color 0.3s, border-color 0.3s;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        footer {
            background-color: #343a40;
            color: white;
        }
        footer a {
            color: #adb5bd;
        }
        footer a:hover {
            color: white;
        }
        .lead {
            font-size: 1.5rem;
            font-weight: 300;
        }
    </style>
</head>
<body>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 navbar">
    <p class="my-0 mr-md-auto font-weight-normal" style="font-size: 180%;"><b>Quick Bid.Lk</b></p>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2" href="itemdetail.jsp">Products</a>
        <a class="p-2" href="About.jsp">About Us</a>
        <a class="p-2" href="Help.jsp">Help</a>
        <a class="p-2" href="Feedbacklist.jsp">Feedback</a>
    </nav>
    <a class="btn btn-outline-light mr-3" href="Adminlogin.jsp">Admin Login</a>
    <a class="btn btn-outline-light mr-3" href="bidderlogin.jsp">Bidder Login</a>
    <a class="btn btn-outline-light" href="sellerlogin.jsp">Seller Login</a>
</div>

<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    <h1 class="display-4">Let's Do Your First Bid</h1>
    <p class="lead">You will win! Maybe not today, or tomorrow, but one day you will win.</p>
</div>

<div class="container">
    <div class="card-deck mb-3 text-center">
        <div class="card mb-4 shadow-sm">
            <div class="card-header">
                <h4 class="my-0 font-weight-normal">Bidder Register</h4>
            </div>
            <div class="card-body">
                <h1 class="card-title pricing-card-title">$0 <small class="text-muted">/ month</small></h1>
                <ul class="list-unstyled mt-3 mb-4">
                    <li>Unlimited Bid Items</li>
                    <li>Shipping</li>
                    <li>Email Support</li>
                    <li>Help Center Access</li>
                </ul>
                <a class="btn btn-lg btn-block btn-primary" href="bidderinsertupdate.jsp">Sign Up for Bidder</a>
            </div>
        </div>
        <div class="card mb-4 shadow-sm">
            <div class="card-header">
                <h4 class="my-0 font-weight-normal">Seller Register</h4>
            </div>
            <div class="card-body">
                <h1 class="card-title pricing-card-title">$15 <small class="text-muted">/ month</small></h1>
                <ul class="list-unstyled mt-3 mb-4">
                    <li>20 Sales Included</li>
                    <li>10 Boost Sales</li>
                    <li>Priority Email Support</li>
                    <li>Help Center Access</li>
                </ul>
                <a class="btn btn-lg btn-block btn-primary" href="jsp/add-payment.jsp">Sign Up for Seller</a>
            </div>
        </div>
    </div>

    <footer class="pt-4 my-md-5 pt-md-5 border-top">
        <div class="row">
            <div class="col-12 col-md mr-5">
                <small class="d-block mb-3 text-muted">©️ Quick Bid.Lk 2024-2025</small>
            </div>
            <div class="col-6 col-md">
                <h5>Features</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Cool Stuff</a></li>
                    <li><a class="text-muted" href="#">Random Feature</a></li>
                    <li><a class="text-muted" href="#">Team Feature</a></li>
                    <li><a class="text-muted" href="#">Stuff for Developers</a></li>
                    <li><a class="text-muted" href="#">Another One</a></li>
                    <li><a class="text-muted" href="#">Last Time</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>Resources</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Resource</a></li>
                    <li><a class="text-muted" href="#">Resource Name</a></li>
                    <li><a class="text-muted" href="#">Another Resource</a></li>
                    <li><a class="text-muted" href="#">Final Resource</a></li>
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
</div>

</body>
</html>