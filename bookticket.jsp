<%-- 
    Document   : bookticket
    Created on : 16 Dec, 2022, 3:06:45 PM
    Author     : Kavin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<link href="css/design.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    <style>
     #tab{
         margin: auto;
         padding-left: 100px;
         
     }
          #tab1{
         margin: auto;
         padding-left: 100px;
         padding-top: 20px;
         
     }
     .hea{
         font-style: oblique;
     }
     .table{
         
         padding-top: 20px;
     }
     #sear{
         padding-left: 230px;
     }
     .lab{
         color: white;
        margin-left: 200px;
     }
     .pricetag{
         background-color: black;
         opacity: 90%;
         margin-left: 550px;
         margin-right: 400px;
         padding-left: 50px;
         padding-bottom: 20px;
         padding-top: 20px;
         color:white;
         font-size: larger;
         
     }
      body{
                background-image: url("images/div11.1.jpg");
                  background-size: cover;
  background-repeat: no-repeat;
      }
    </style>
    </head>
    <body>
                              <nav class="navbar navbar-expand bg-dark">
    <div class="container">
      <a class="navbar-brand"><b>Get Set Go</b></a>
      <div class="collapse navbar-collapse justify-content-end " id="navbarNav" >
        <ul class="navbar-nav ">
          <li class="nav-item ">
            <li class="nav-item ">
            <a class="nav-link active text-white"><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
  <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
</svg><b> +91-11-40845858</b></a>
        <li class="nav-item">
              <a class="nav-link active text-white" href="main.jsp"><b>DashBoard</b></a>
          </li>
             <li class="nav-item">
            <a class="nav-link active text-white" href="Allflights.jsp"><b>All Flights</b></a>
          </li>
          <li class="nav-item">
            <a class="nav-link active text-white" href="account.jsp"><b>My Account</b></a>
          </li>
           <li class="nav-item">
            <a class="nav-link active text-danger" href="bookticket.jsp"><b>Book Ticket</b></a>
          </li>
          
              <li class="nav-item">
            <a class="nav-link active text-white" href="index.jsp"><b>Logout</b></a>
          </li>
         
        </ul>
      </div>
    </div>
  </nav>
             <label class="lab mt-3 text-dark"><h2><b>Please Enter the Flight_No and Your Email to Confirm Your Booking</b></h2></label>
  <form class="row gy-4 gx-3 w-75 bg-transparent"style=height:100% id="sear" action="bookticket1.jsp" method="post">    
  <div class="col-3" >   
    <input type="text" class="form-control" id="autoSizingInput" placeholder="Flight_No" name="Flight_No" required>
  </div>
            <div class="col-3">
    <input type="text" class="form-control" id="autoSizingInput" placeholder="Email" name="Email" required>
  </div>
  <div class="col-auto">
    <button type="submit" class="btn btn-primary">Search</button>
  </div>
     
</form>

    </body>
</html>
