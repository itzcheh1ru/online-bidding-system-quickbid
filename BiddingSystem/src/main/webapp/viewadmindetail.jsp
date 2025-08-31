<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View admin details and update details</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

 <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' rel='stylesheet'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
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
	
  <p class="my-0 mr-md-auto font-weight-normal"  style="font-size:180%;" ><b>Quick Bid.Lk</b></p>
  
  <nav class="my-2 my-md-0 mr-md-3">
  	<a class="p-2 text-dark" href="home.jsp">Home</a>
  	<a class="p-2 text-dark" href="itemdetail.jsp">Products</a>
    <a class="p-2 text-dark" href="About.jsp">About Us</a>
    <a class="p-2 text-dark" href="Help.jsp">Help</a>
    <a class="p-2 text-dark" href="Feedbacklist.jsp">Feedback</a>
    
  </nav>
</div>

<div id="pricing" class="container-fluid">
<h4>Admin Details</h4>
<table class="table table-bordered table-striped text-center">
<tr>
	<th>Admin Id</th>
	<th>Admin Name</th>
	<th>Admin Telephone </th>
	<th>NIC Number</th>
	<th>User Name</th>
	
</tr>
<c:forEach var="cus" items="${admindetail}">
		
		<c:set var="id" value="${cus.id}"/>
	 	<c:set var="aname" value="${cus.aname}"/>
	 	<c:set var="atelephone" value="${cus.atelephone}"/>
	 	<c:set var="aNIC" value="${cus.aNIC}"/>
	 	<c:set var="ausername" value="${cus.ausername}"/>
	 	<c:set var="apassword" value="${cus.apassword}"/>



	 <tr>
	 <td>${cus.id}</td>
	 <td>${cus.aname}</td>
	 <td>${cus.atelephone}</td>
	 <td>${cus.aNIC}</td>
	 <td>${cus.ausername}</td>
	 
	</tr> 
	
		
	</c:forEach> 
</table>
</div>
<br>
<h4>Update Admin Account Details</h4><br>

<%
	String id = request.getParameter("id");
	String aname = request.getParameter("aname");
	String atelephone = request.getParameter("atelephone");
	String aNIC = request.getParameter("aNIC");
	String ausername = request.getParameter("ausername");
	String apassword = request.getParameter("apassword");

%>

<form action="up" method="post">
<table class="table table-bordered table-striped text-center">
<tr>

	<th>Admin ID</th>
	<td><input type="text" name="id"  ><br></td>
</tr>
<tr>

	<th>Admin name</th>
	<td><input type="text" name="aname" ><br></td>
</tr>
<tr>

	<th>Admin Telephone</th>
	<td><input type="text" name="atelephone" ><br></td>
</tr>
<tr>

	<th>Admin NIC</th>
	<td><input type="text" name="aNIC" ><br></td>
</tr>
<tr>

	<th>Admin username</th>
	<td><input type="text" name="ausername" ><br></td>
</tr>
<tr>

	<th>Admin password</th>
	<td><input type="text" name="apassword" ><br></td>
</tr>
<tr>
<td><input type="submit" name="submit" value="update details" class="btn btn-secondary"> <br></td>
</tr>
	
</table>
</form>
<br><br>
<h4>Delete Admin Account Details</h4>
<br>


<form action="account" method="post">
<table class="table table-bordered table-striped text-center">
	<tr>
		<th>Admin NIC</th>
		<td><input type="text" name="aNIC" ><br></td>
	</tr>	
	<tr>
		<td colspan="2"> <input type="submit" name="submit" value="delete admin account" class="btn btn-secondary"> <br></td>
	</tr>		 
			 
            
</table>		
	</form>





 <footer class="pt-4 my-md-5 pt-md-5 border-top">
    <div class="row">
      <div class="col-12 col-md mr-5" >
        <small class="d-block mb-3 text-muted">©Quick Bid.Lk 2024-2025</small>
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