<%-- 
    Document   : payment
    Created on : 16 Dec, 2022, 3:21:34 PM
    Author     : Kavin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<link href="css/design.css" rel="stylesheet" type="text/css">
<style>
    .cc-img {
        margin: 0 auto;
    }
    .row{
        margin-top: 20px;
    font-style:oblique;
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
            <a class="nav-link active text-white"><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
  <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
</svg><b> +91-11-40845858</b></a>
        <li class="nav-item">
              <a class="nav-link active text-white" href="main.jsp"><b>DashBoard</b></a>
          </li>
          <li class="nav-item">
            <a class="nav-link active text-white" href="account.jsp"><b>My Account</b></a>
          </li>
           <li class="nav-item">
            <a class="nav-link active text-danger" href="bookticket.jsp"><b>Payment</b></a>
          </li>
          
              <li class="nav-item">
            <a class="nav-link active text-white" href="index.jsp"><b>Logout</b></a>
          </li>
         
        </ul>
      </div>
    </div>
  </nav>
     
        
              <form role="form" action="mybookings.jsp" method="post">
<div class="container">
    <div class="row">   
            <div class="card w-100">
                <div class="card-header ">
                    <div class="row" >
                        <h3 class="text-xs-center">Payment Details</h3>
                        <img class="img-fluid cc-img" src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png">
                    </div>
                </div>
                <div class="card-block">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>Card Number</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" placeholder="Valid Card Number" required/>
                                        <span class="input-group-addon"><span class="fa fa-credit-card"></span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label><span class="visible-xs-inline">Exp</span> Date</label>
                                    <input type="number" class="form-control" placeholder="MM / YY" required />
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 float-xs-right">
                                <div class="form-group">
                                    <label>CV Code</label>
                                    <input type="number" class="form-control" placeholder="CVC" required />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>Card Owner</label>
                                    <input type="text" class="form-control" placeholder="Card Owner Names" required/>
                                </div>
                            </div>
                        </div>
                    
                </div>
                <div class="card-footer" >
                    <div class="row">
                        <div class="col-xs-12">
                            <button type="submit" class="btn btn-primary me-md-2 "><b>Process Payment</b></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
               </form>



    </body>
</html>
