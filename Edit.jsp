<%-- 
    Document   : Edit
    Created on : 20 Dec, 2022, 8:28:54 PM
    Author     : Kavin
--%>

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
              <a class="nav-link active text-danger" href="Edit.jsp"><b>Edit Flights</b></a>
          </li>
           

        
               
              <li class="nav-item">
            <a class="nav-link active text-white" href="index.jsp"><b>Logout</b></a>
          </li>
         
        </ul>
      </div>
    </div>
  </nav>
    
        
<div class="container">
	<div class="row justify-content-center bg-transparent">
            		<div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
              <div class="panel-body  p-4  ">
                <div class="text-center">
                    <h2 class="text-center text-dark"><b>Edit- Your Flights</b></h2>
               
                  <div class="panel-body">
                    <form id="register-form" role="form" autocomplete="off" class="form" method="post" action="Edit1.jsp">
                      <div class="form-group">
                          <div class="form-outline mb-4">
                    <input type="text" id="form3Example1cg" class="form-control form-control-lg" placeholder="Flight_No" name="Flight_No" required/>
                  
                </div>
                     <div class="form-outline mb-4">
                    <input type="text" id="form3Example1cg" class="form-control form-control-lg" placeholder="Flight_Name" name="Flight_Name" required/>
                  
                </div>
                     <div class="form-outline mb-4">
                    <input type="text" id="form3Example1cg" class="form-control form-control-lg" placeholder="From_City" name="From_City" required/>
                  
                </div>
                     <div class="form-outline mb-4">
                    <input type="text" id="form3Example1cg" class="form-control form-control-lg" placeholder="To_City" name="To_City" required/>
                  
                </div>
                     <div class="form-outline mb-4">
                         <input type="time" id="form3Example1cg" class="form-control form-control-lg" placeholder="Departure_Time" name="Departure_Time" required/>
                  
                </div>
                     <div class="form-outline mb-4">
                         <input type="time" id="form3Example1cg" class="form-control form-control-lg" placeholder="Arrival_Time" name="Arrival_Time" required/>
                  
                </div>
                     <div class="form-outline mb-4">
                         <input type="date" id="form3Example1cg" class="form-control form-control-lg" placeholder="Date" name="Date" required/>
                  
                </div>
                     <div class="form-outline mb-4">
                         <input type="number" id="form3Example1cg" class="form-control form-control-lg" placeholder="Ticket_Price" name="Ticket_Price" required/>
                  
                </div>
                      </div>
                      <div class="form-group">
                        <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Done" type="submit">
                      </div>
                    
                    </form>
            
                  </div>
                </div>
                </div>
              </div>
              </div>
            </div>
      <label>Edit done based on Flight_NO and Flight_Name</label>
            
    </body>
</html>
