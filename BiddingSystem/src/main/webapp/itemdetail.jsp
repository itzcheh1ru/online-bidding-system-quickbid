<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Item Details</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">

    <!-- FontAwesome for icons -->
    <link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' rel='stylesheet'>

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
    </style>
</head>
<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <p class="my-0 mr-md-auto font-weight-normal" style="font-size:180%;"><b>Quick Bid.Lk</b></p>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="home.jsp">Home</a>
        <a class="p-2 text-dark" href="About.jsp">About Us</a>
        <a class="p-2 text-dark" href="Help.jsp">Help</a>
        <a class="p-2 text-dark" href="Feedbacklist.jsp">Feedback</a>
    </nav>
</div>

<div class="container">
    <table class="table table-bordered table-striped text-center">
        <tr>
            <th colspan="6">Product Details</th>
        </tr>
        <tr>
            <th>Product Id</th>
            <th>Product Name</th>
            <th>Product Description</th>
            <th>Product Price</th>
            <th>Seller Id</th>
            <th>Product Category Number</th>
        </tr>
        <!-- Loop through item details -->
        <c:forEach var="cus" items="${itemdetail}">
            <c:set var="id" value="${pro.id}" />
            <c:set var="pname" value="${pro.pname}" />
            <c:set var="pdescription" value="${pro.pdescription}" />
            <c:set var="pprice" value="${pro.pprice}" />
            <c:set var="psellerid" value="${pro.psellerid}" />
            <c:set var="pbidderid" value="${pro.pbidderid}" />

            <tr>
                <td>${cus.id}</td>
                <td>${cus.pname}</td>
                <td>${cus.pdescription}</td>
                <td>${cus.pprice}</td>
                <td>${cus.psellerid}</td>
                <td>${cus.pbidderid}</td>
            </tr>
        </c:forEach>
    </table>

<!-- Insert Product URL -->
    <c:url value="insertitemdetail.jsp" var="adminsert">
        <c:param name="id" value="${id}" />
        <c:param name="pname" value="${pname}" />
        <c:param name="pdescription" value="${pdescription}" />
        <c:param name="pprice" value="${pprice}" />
        <c:param name="psellerid" value="${psellerid}" />
        <c:param name="pbidderid" value="${pbidderid}" />
    </c:url>

    <!-- Insert Product Button -->
    <a href="${adminsert}">
        <input type="button" name="insertitem" value="Insert Product" class="btn btn-primary">
    </a>

    <br><br>
    
    
    <!-- Update Product URL -->
    <c:url value="updateitemdetail.jsp" var="admupdate">
        <c:param name="id" value="${id}" />
        <c:param name="pname" value="${pname}" />
        <c:param name="pdescription" value="${pdescription}" />
        <c:param name="pprice" value="${pprice}" />
        <c:param name="psellerid" value="${psellerid}" />
        <c:param name="pbidderid" value="${pbidderid}" />
    </c:url>

    <!-- Update Product Button -->
    <a href="${admupdate}">
        <input type="button" name="updateitem" value="Update Product" class="btn btn-primary">
    </a>

    <br><br>

    <!-- Delete Product URL -->
    <c:url value="deleteitemdetail.jsp" var="admdelete">
        <c:param name="id" value="${id}" />
        <c:param name="pname" value="${pname}" />
        <c:param name="pdescription" value="${pdescription}" />
        <c:param name="pprice" value="${pprice}" />
        <c:param name="psellerid" value="${psellerid}" />
        <c:param name="pbidderid" value="${pbidderid}" />
    </c:url>

    <!-- Delete Product Button -->
    <a href="${admdelete}">
        <input type="button" name="deleteitem" value="Delete Product" class="btn btn-danger">
    </a>
</div>

<!-- Footer -->
<footer class="pt-4 my-md-5 pt-md-5 border-top">
    <div class="row">
        <div class="col-12 col-md mr-5">
            <small class="d-block mb-3 text-muted">© Sky Bid.Lk 2024-2025</small>
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