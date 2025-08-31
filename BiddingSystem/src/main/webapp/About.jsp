<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us - Quick Bid.Lk</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
  .bd-placeholder-img {
    font-size: 1.125rem;
    text-anchor: middle;
    user-select: none;
  }

  @media (min-width: 768px) {
    .bd-placeholder-img-lg {
      font-size: 3.5rem;
    }
  }

  .about-section {
    padding: 50px;
    background-color: #f9f9f9;
    border-radius: 10px;
    margin-top: 20px;
  }

  .mission-section, .vision-section, .features-section {
    margin-top: 20px;
  }

  h2 {
    color: #007bff;
  }
</style>
</head>
<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
  <p class="my-0 mr-md-auto font-weight-normal" style="font-size:180%;"><b>Quick Bid.Lk</b></p>
  <nav class="my-2 my-md-0 mr-md-3">
  	<a class="p-2 text-dark" href="home.jsp">Home</a>
  	<a class="p-2 text-dark" href="itemdetail.jsp">Products</a>
    <a class="p-2 text-dark" href="Help.jsp">Help</a>
    <a class="p-2 text-dark" href="Feedbacklist.jsp">Feedback</a>
  </nav>
  <a class="btn btn-outline-primary mr-3" href="Adminlogin.jsp">Admin Login</a>
  <a class="btn btn-outline-primary" href="bidderlogin.jsp">Bidder Login</a>
  <a class="btn btn-outline-primary" href="sellerlogin.jsp">Seller Login</a>
</div>

<!-- About Section -->
<div class="container about-section">
  <h2>About Quick Bid.Lk</h2>
  <p>Quick Bid.Lk is an innovative online bidding platform designed to connect buyers and sellers, allowing users to bid on a wide range of products, from electronics to services. With a user-friendly interface and transparent bidding system, we aim to make online auctions accessible and efficient for everyone.</p>
  
  <div class="mission-section">
    <h3>Our Mission</h3>
    <p>At Quick Bid.Lk, our mission is to provide a fair and competitive marketplace where sellers can maximize the value of their products and buyers can discover unique deals. We are committed to creating a trustworthy platform where all transactions are secure, seamless, and enjoyable for users.</p>
  </div>
  
  <div class="vision-section">
    <h3>Our Vision</h3>
    <p>We envision Quick Bid.Lk as the leading bidding platform in the region, offering a wide variety of products and services for people of all interests. Our goal is to continue innovating the auction space, adding new features that cater to the evolving needs of our users.</p>
  </div>
  
  <div class="features-section">
    <h3>Why Choose Us?</h3>
    <ul>
      <li><strong>Wide Range of Products</strong>: From electronics, fashion, and collectibles to services, Quick Bid.Lk offers a variety of auction categories.</li>
      <li><strong>Secure Transactions</strong>: We prioritize user security, ensuring that all payments and data are protected using industry-standard encryption.</li>
      <li><strong>User-Friendly Interface</strong>: Easy to navigate, Quick Bid.Lk is designed for users of all experience levels, from beginners to seasoned bidders.</li>
      <li><strong>24/7 Customer Support</strong>: Our dedicated support team is available around the clock to assist you with any issues or inquiries.</li>
      <li><strong>Real-Time Bidding</strong>: Enjoy real-time bidding with instant notifications, ensuring you don’t miss any important auctions.</li>
    </ul>
  </div>
</div>

<!-- Footer Section -->
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
