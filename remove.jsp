<%-- 
    Document   : remove
    Created on : 19 Dec, 2022, 7:48:59 PM
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
<link href="css/design.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
         <style>
        
        body{
                background-image: url("images/div10.1.jpg");
                  background-size: cover;
  background-repeat: no-repeat;

            }
        </style>
    </head>
    <body>
         <nav class="navbar navbar-expand bg-dark">
    <div class="container">
      <a class="navbar-brand "><b>Get Set Go</b></a>
      <div class="collapse navbar-collapse justify-content-end " id="navbarNav" >
        <ul class="navbar-nav ">
          <li class="nav-item ">
            <li class="nav-item ">
          <li class="nav-item">
              <a class="nav-link active text-white" href="admin.jsp"><b>DashBoard</b></a>
          </li>
          
           <li class="nav-item">
              <a class="nav-link active text-danger" href="remove.jsp"><b>Remove Flights</b></a>
          </li>

                    

        
               
              <li class="nav-item">
            <a class="nav-link active text-white" href="index.jsp"><b>Logout</b></a>
          </li>
         
        </ul>
      </div>
    </div>
  </nav>
              <form class="row gy-4 gx-3 w-75 align-items-center bg-transparent"style=height:100% action="remove1.jsp" method="post">    
  <div class="col-3">   
    <input type="text" class="form-control" id="autoSizingInput" placeholder="Flight_No" name="Flight_No" required>
  </div><div class="col-3">   
    <input type="text" class="form-control" id="autoSizingInput" placeholder="From_City" name="From_City" required>
  </div>
            <div class="col-3">
    <input type="text" class="form-control" id="autoSizingInput" placeholder="To_City" name="To_City" required>
  </div>
            <div class="col-3">
                <input type="date" class="form-control" id="autoSizingInput" placeholder="Date" name="Date" required>
  </div>
 
  <div class="col-auto">
    <button type="submit" class="btn btn-primary ">Remove</button>
  </div>
        
              </form>
               
    </body>
</html>

