<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert and Update Seller Details</title>

    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' rel='stylesheet'>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background: #f4f4f4;
        }

        .box {
            padding: 40px;
            background-color: white;
            text-align: left;
            width: 60%;
            min-width: 350px;
            margin: 40px auto;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            transition: 0.25s;
        }

        h4 {
            text-align: center;
            color: #2c3e50;
            text-transform: uppercase;
            font-weight: 600;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        label {
            display: block;
            color: #444;
            margin-bottom: 0.5rem;
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 2px solid #3498db;
            border-radius: 24px;
            outline: none;
            transition: 0.3s;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #1565c0;
        }

        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 14px;
            border: 2px solid #2ecc71;
            background: none;
            border-radius: 24px;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background: #2ecc71;
            color: white;
        }

        footer {
            margin-top: 50px;
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
            <a class="p-2 text-dark" href="ContactUs.jsp">Help</a>
            <a class="p-2 text-dark" href="Feeddbacklist.jsp">Feedback</a>
        </nav>
    </div>

    <h4>Create Seller Account</h4>
    <form action="insert90" method="post" class="box">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" name="Sellername" placeholder="Enter your name" required>
        </div>
        <div class="form-group">
            <label for="telephone">Telephone number</label>
            <input type="text" name="SellerTelephone" placeholder="Enter your telephone number" required>
        </div>
        <div class="form-group">
            <label for="NIC">NIC</label>
            <input type="text" name="SellerNIC" placeholder="Enter your NIC number" required>
        </div>
        <div class="form-group">
            <label for="username">User Name</label>
            <input type="text" name="Susername" placeholder="Enter your Username">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="Spassword" placeholder="Enter your Password">
        </div>
        <input type="submit" name="submit" value="Insert Seller">
    </form>

    <form action="view90" method="post" class="box">
        <input type="submit" name="submit" value="View Seller details and update">
    </form>

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
                    <li><a class="text-muted" href="#">Locations</a></li>
                    <li><a class="text-muted" href="#">Privacy</a></li>
                </ul>
            </div>
        </div>
    </footer>
</body>
</html>
