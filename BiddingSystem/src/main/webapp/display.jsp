<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Management</title>

    <!-- Bootstrap and Font Awesome Stylesheets (Same as the first code) -->
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
    <link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' rel='stylesheet'>

    <style>
        /* Same style block from the first code */
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
        <a class="p-2 text-dark" href="Feedbacklist.jsp">Feedback</a>
    </nav>
</div>

<!-- Employee Details Table -->
<table class="table table-bordered table-striped text-center">
    <tr>
        <th colspan="5">Employee Details</th>
    </tr>
    <tr>
        <th>ID</th>
        <th>Employee Name</th>
        <th>Email</th>
        <th>Mobile Number</th>
        <th>Action</th>
    </tr>

    <c:forEach var="sign" items="${allSigns}">
        <tr>
            <td>${sign.id}</td>
            <td>${sign.username}</td>
            <td>${sign.email}</td>
            <td>${sign.pword}</td>
            <td>
                <a href="update.jsp?id=${sign.id}&username=${sign.username}&email=${sign.email}&pword=${sign.pword}" class="btn btn-warning btn-sm mr-2">Update</a>
                <form action="DeleteServlet" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="${sign.id}" />
                    <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

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
