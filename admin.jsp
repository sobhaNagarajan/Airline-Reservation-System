<%-- 
    Document   : admin
    Created on : 16 Dec, 2022, 3:11:59 PM
    Author     : Kavin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   <link href="css/design.css" rel="stylesheet" type="text/css"/>
   <style>
               .lav{
                   color: white;
               padding-left: 500px;
               padding-top: 30px;
               }    
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
              <a class="nav-link active text-danger" href="admin.jsp"><b>DashBoard</b></a>
          </li>
           <li class="nav-item">
              <a class="nav-link active text-white" href="Flightreport.jsp"><b>Flight Reports</b></a>
          </li>
           
 
              <li class="nav-item">
            <a class="nav-link active text-white" href="index.jsp"><b>Logout</b></a>
          </li>
         
        </ul>
      </div>
    </div>
  </nav>
        <label class="lav"><h1><b>Welcome Admin!!!</b></h1></label>  
       
       
       
    </body>
</html>
