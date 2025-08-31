<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Form</title>
    
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
            color: #2c3e50; /* Darker color for better contrast */
            text-transform: uppercase;
            font-weight: 600; /* Bolder font for emphasis */
            margin-bottom: 25px;
            letter-spacing: 2px; /* Adds some space between letters */
        }

        .form-container h2::after {
            content: "";
            display: block;
            width: 60px; /* Underline width */
            height: 4px; /* Underline height */
            background-color: #3498db; /* Color of the underline */
            margin: 10px auto; /* Center the underline */
        }

        .form-group input {
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

        .form-group input:focus {
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
        <nav class="my-2 my-md-0 mr-md-3">
            <a class="p-2 text-dark" href="home.jsp">Home</a>
            <a class="p-2 text-dark" href="itemdetail.jsp">Products</a>
            <a class="p-2 text-dark" href="About.jsp">About Us</a>
            <a class="p-2 text-dark" href="Feedbacklist.jsp">Feedback</a>
        </nav>
    </div>

    <%
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String pword = request.getParameter("pword");
    %>

    <form action="UpdateServlet" method="post" class="form-container">
        <h2>Update Your Details</h2> <!-- Updated heading -->
        
        <div class="form-group">
            <input type="text" id="id" name="id" value="<%=id%>" readonly>
        </div>
        <div class="form-group">
            <input type="text" id="username" name="username" value="<%=username%>" required placeholder="Employee Name">
        </div>
        <div class="form-group">
            <input type="email" id="email" name="email" value="<%=email%>" required placeholder="Email">
        </div>
        <div class="form-group">
            <input type="password" id="password" name="pword" value="<%=pword%>" required placeholder="Password">
        </div>
        <button type="submit" class="btn-primary">Update</button>
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