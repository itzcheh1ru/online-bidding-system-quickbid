<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login - Quick Bid.Lk</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- Font Awesome CSS -->
<link href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" rel="stylesheet">

<!-- Updated Form Styles -->
<style>
  body {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: white;
  }

  .card {
    border: none;
  }

  /* Updated box class to match the first form style */
  .box {
    padding: 40px;
    background-color: white;
    text-align: center;
    width: 75%;
    min-width: 300px;
    border-radius: 15px;
    margin: auto;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
  }

  .box h1 {
    color: #2c3e50;
    text-transform: uppercase;
    font-weight: 600;
    letter-spacing: 2px;
    margin-bottom: 25px;
  }

  .box h1::after {
    content: "";
    display: block;
    width: 60px;
    height: 4px;
    background-color: #3498db;
    margin: 10px auto;
  }

  .box input[type="text"], .box input[type="password"] {
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

  .box input[type="text"]:focus, .box input[type="password"]:focus {
    width: 85%;
    border-color: #1565c0;
  }

  .box input[type="submit"] {
    border: 2px solid #2ecc71;
    padding: 14px 40px;
    border-radius: 24px;
    background: none;
    color: black;
    cursor: pointer;
    transition: 0.25s;
    width: 175px;
  }

  .box input[type="submit"]:hover {
    background: #2ecc71;
    color: white;
  }

  ul.social-network {
    list-style: none;
    display: inline;
    margin-left: 0 !important;
    padding: 0;
  }

  ul.social-network li {
    display: inline;
    margin: 0 5px;
  }
  
  .social-circle li a {
    display: inline-block;
    margin: 0 auto;
    border-radius: 50%;
    text-align: center;
    width: 50px;
    height: 50px;
    font-size: 20px;
  }

  .social-circle li i {
    margin: 0;
    line-height: 50px;
    text-align: center;
  }
</style>

</head>
<body>
<!-- Navbar -->
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
  <p class="my-0 mr-md-auto font-weight-normal" style="font-size:180%;"><b>Quick Bid.Lk</b></p>
  
  <nav class="my-2 my-md-0 mr-md-3">
    <a class="p-2 text-dark" href="home.jsp">Home</a>
    <a class="p-2 text-dark" href="itemdetail.jsp">Products</a>
    <a class="p-2 text-dark" href="About.jsp">About Us</a>
    <a class="p-2 text-dark" href="Help.jsp">Help</a>
    <a class="p-2 text-dark" href="Feedbacklist.jsp">Feedback</a>
  </nav>
  <a class="btn btn-outline-primary" href="bidderlogin.jsp">Bidder Login</a>
  <a class="btn btn-outline-primary" href="sellerlogin.jsp">Seller Login</a>
</div>

<!-- Login Form -->
<div class="container">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
        <form action="login" method="post" class="box">
          <h1>Login</h1>
          <p class="text-muted">
            <font color="#7A7A7A">Please Enter Admin Username and Password</font>
          </p>
          <br>

          <input type="text" name="ausername" placeholder="Enter your Username" class="form-control" required>
          <input type="password" name="apassword" placeholder="Enter your Password" class="form-control" required>
          <input type="submit" name="submit" value="Login">
          <br>

          <div class="col-md-12">
            <ul class="social-network social-circle">
              <li><a href="#" class="icoFacebook" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
              <li><a href="#" class="icoTwitter" title="Twitter"><i class="fab fa-twitter"></i></a></li>
              <li><a href="#" class="icoGoogle" title="Google +"><i class="fab fa-google-plus"></i></a></li>
            </ul>
          </div>
        </form><br> 
      </div>
    </div>
  </div>
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
