<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View bidder details and update details</title>

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
<h4>Bidder Details</h4>
<table class="table table-bordered table-striped text-center">
<tr>
	<th>Bidder Id</th>
	<th>Bidder Name</th>
	<th>Bidder Telephone </th>
	<th>NIC Number</th>
	<th>User Name</th>
	
</tr>
<c:forEach var="bid" items="${bidderdetail}">
		
		<c:set var="id" value="${bid.id}"/>
	 	<c:set var="bname" value="${bid.bname}"/>
	 	<c:set var="btelephone" value="${bid.btelephone}"/>
	 	<c:set var="bNIC" value="${bid.bNIC}"/>
	 	<c:set var="busername" value="${bid.busername}"/>
	 	<c:set var="bpassword" value="${bid.bpassword}"/>



	 <tr>
	 <td>${bid.id}</td>
	 <td>${bid.bname}</td>
	 <td>${bid.btelephone}</td>
	 <td>${bid.bNIC}</td>
	 <td>${bid.busername}</td>
	 
	</tr> 
	
		
	</c:forEach> 
</table>
</div>
<br>
<h4>Update Bidder Account Details</h4><br>

<%
	String id = request.getParameter("id");
	String bname = request.getParameter("bname");
	String btelephone = request.getParameter("btelephone");
	String bNIC = request.getParameter("bNIC");
	String busername = request.getParameter("busername");
	String bpassword = request.getParameter("bpassword");

%>

<form action="up60" method="post">
<table class="table table-bordered table-striped text-center">
<tr>

	<th>Bidder ID</th>
	<td><input type="text" name="id"  ><br></td>
</tr>
<tr>

	<th>Bidder name</th>
	<td><input type="text" name="aname" ><br></td>
</tr>
<tr>

	<th>Bidder Telephone</th>
	<td><input type="text" name="atelephone" ><br></td>
</tr>
<tr>

	<th>Bidder NIC</th>
	<td><input type="text" name="aNIC" ><br></td>
</tr>
<tr>

	<th>Bidder username</th>
	<td><input type="text" name="ausername" ><br></td>
</tr>
<tr>

	<th>Bidder password</th>
	<td><input type="text" name="apassword" ><br></td>
</tr>
<tr>
<td><input type="submit" name="submit" value="update details" class="btn btn-secondary"> <br></td>
</tr>
	
</table>
</form>
<br><br>
<h4>Delete Bidder Account Details</h4>
<br>


<form action="account60" method="post">
<table class="table table-bordered table-striped text-center">
	<tr>
		<th>Bidder NIC</th>
		<td><input type="text" name="aNIC" ><br></td>
	</tr>	
	<tr>
		<td colspan="2"> <input type="submit" name="submit" value="delete bidder account" class="btn btn-secondary"> <br></td>
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