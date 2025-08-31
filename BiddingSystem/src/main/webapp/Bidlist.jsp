<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bid Details</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

 <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' rel='stylesheet'>

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

</head>
<body>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
  <p class="my-0 mr-md-auto font-weight-normal" style="font-size:180%;"><b>Quick Bid.Lk</b></p>
  
  <nav class="my-2 my-md-0 mr-md-3">
  	<a class="p-2 text-dark" href="home.jsp">Home</a>
  	<a class="p-2 text-dark" href="itemdetail.jsp">Products</a>
    <a class="p-2 text-dark" href="About.jsp">About Us</a>
    <a class="p-2 text-dark" href="Help.jsp">Help</a>
  </nav>
</div>

<!-- Feedback Details Table -->
<table class="table table-bordered table-striped text-center">
<tr>
	<th colspan="4">Bid Details</th>
</tr>
<tr>
	<th>Bid Id</th>
	<th>Product Id</th>
	<th>Bidder Id</th>
	<th>Bidder Price</th>
</tr>

<c:forEach var="abc" items="${biddetail}">
	<tr> 
		<td>${abc.id}</td>
		<td>${abc.feedbackdescription}</td>
		<td>${abc.sellerid}</td>
		<td>${abc.bidderid}</td>
	</tr>
</c:forEach>
</table>

<!-- Insert Product URL -->
    <c:url value="insertbid.jsp" var="adminsert">
        <c:param name="id" value="${id}" />
        <c:param name="feedbackdescription" value="${pdescription}" />
        <c:param name="sellerid" value="${psellerid}" />
        <c:param name="bidderid" value="${pbidderid}" />
    </c:url>

    <!-- Insert Product Button -->
    <a href="${adminsert}">
        <input type="button" name="insertfeedback" value="Insert Bid" class="btn btn-primary">
    </a>

    <br><br>
    
    
    <!-- Update Product URL -->
    <c:url value="updatefeedback.jsp" var="admupdate">
        <c:param name="id" value="${id}" />
         <c:param name="id" value="${id}" />
        <c:param name="feedbackdescription" value="${pdescription}" />
        <c:param name="sellerid" value="${psellerid}" />
        <c:param name="bidderid" value="${pbidderid}" />
    </c:url>

    <!-- Update Product Button -->
    <a href="updatebid.jsp">
        <input type="button" name="updatefeedback" value="Update Bid" class="btn btn-primary">
    </a>

    <br><br>

    <!-- Delete  URL -->
    <c:url value="deletebid.jsp" var="admdelete">
         <c:param name="id" value="${id}" />
        <c:param name="feedbackdescription" value="${pdescription}" />
        <c:param name="sellerid" value="${psellerid}" />
        <c:param name="bidderid" value="${pbidderid}" />
    </c:url>

    <!-- Delete Bid Button -->
    <a href="${admdelete}">
        <input type="button" name="deletefeedback" value="Delete Bid" class="btn btn-danger">
    </a>
</div>

<!-- Footer -->
<footer class="pt-4 my-md-5 pt-md-5 border-top">
    <div class="row">
      <div class="col-12 col-md mr-5">
        <small class="d-block mb-3 text-muted">© Quick Bid 2024-2025</small>
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