<%-- 
    Document   : index
    Created on : 27 Nov, 2022, 5:08:37 PM
    Author     : Kavin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<link href="css/design.css" rel="stylesheet" type="text/css">
<style>
    .lab{
        font-style: oblique;
        color:black;
        padding-left: 60px;
       
    }
    #datt{
       padding-left: 20px;   
    }
    .row{
  margin: auto;
  width: 700px;
  padding: 10px;
  height: 280px;
  opacity: 90%;
}
.col-md-4{
    padding-left: 60px;
}
#kavi1{
   margin-left: 20px;
}
#kavi3{
    margin-left: 200px;
}
.form-label{
    padding-left: 100px;
}
.btn-primary{
    margin-left: 280px;
}
</style>
        <title>JSP Page</title>
    </head>
    <body>
          <nav class="navbar navbar-expand">
    <div class="container">
      <a class="navbar-brand"><b>Get Set Go</b></a>
      <div class="collapse navbar-collapse justify-content-end " id="navbarNav" >
        <ul class="navbar-nav ">
          <li class="nav-item ">
            <li class="nav-item ">
            <a class="nav-link active text-white"><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
  <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
</svg><b> +91-11-40845858</b></a>
          </li>
            <a class="nav-link active text-danger" aria-current="page" href="index.jsp"><b>Home</b></a>
          </li>

          <li class="nav-item">
            <a class="nav-link active text-white" href="Login.jsp"><b>Login</b></a>
          </li>
          <li class="nav-item">
            <a class="nav-link active text-white" href="signup.jsp"><b>Sign Up</b></a>
          </li>
          <li class="nav-item">
            <a class="nav-link active text-white" href="aboutus.jsp"><b>About Us</b></a>
          </li>
      
         
        </ul>
      </div>
    </div>
  </nav>

  <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
    <div class="carousel-inner">
      <div class="carousel-item active" data-bs-interval="2000">
          <img src="div1.1.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item" data-bs-interval="2000">
          <img src="div1.2.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
          <img src="div1.3.jpg" class="d-block w-100" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
   
    </button>
  </div>
 
  <form class="row g-3 needs-validation shadow-lg p-3 mb-5 bg-secondary rounded" action="search.jsp" method="post">
    <div class="col-md-12">
        <label class="lab"><h3><b> Welcome to GET SET GO Airline Services</b></h3></label>
      </div>
    <div class="col-md-5 position-relative" id="kavi1">
      <input type="text" class="form-control" id="validationTooltip01" placeholder="From" name="From_City" required>
      
    </div>
    <span class="col-md-1 btn float-right" >
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left-right" viewBox="0 0 16 16">
        <path fill-rule="evenodd" d="M1 11.5a.5.5 0 0 0 .5.5h11.793l-3.147 3.146a.5.5 0 0 0 .708.708l4-4a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708.708L13.293 11H1.5a.5.5 0 0 0-.5.5zm14-7a.5.5 0 0 1-.5.5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H14.5a.5.5 0 0 1 .5.5z"/>
      </svg>
  </span>
    <div class="col-md-5 position-relative" id="kavi2">
      <input type="text" class="form-control" id="validationTooltip02" placeholder="To" name="To_City" required>
      
    </div>
    <div class="col-md-5 position-relative" id="kavi3">
      <label for="validationTooltip05" class="form-label"><b>Date</b></label>
      <input type="date" class="form-control" id="validationTooltip03" name="Date" required>
      
    </div>
 
   
    <div class="col-6 ">
      <button class="btn btn-primary " type="submit">Search</button>
    </div>
  </form>
<div class="card-group">
  <div class="card">
      <img src="images/div2.1.jpg" class="card-img-top" alt="...">
    <div class="card-body">
        <h5 class="card-title"><b>New Schedule. More Flights for You</b></h5>
        -----------------------------------------------------------
      <p class="card-text">Get ready for more comfort, choice<br> and convenience as <b>GETSETGO</b> introduces the new flights </p>
    
    </div>
  </div>
  <div class="card">
      <img src="div2.2.jpg" class="card-img-top" alt="...">
    <div class="card-body">
        <h5 class="card-title"><b>COVID-19 Updates</b></h5>
        -----------------------------------------------------------
      <p class="card-text">Helpline for COVID-19 : Phone Number (24X7)  011-24300666<br><br>
          Email id : support.covid19-boi[at]gov.in</p>
 
    </div>
  </div>
  <div class="card">
      <img src="div2.3.jpg" class="card-img-top" alt="...">
    <div class="card-body">
        <h5 class="card-title"><b>Bid.Fly.Enjoy!</b></h5>
      -----------------------------------------------------------
      <p class="card-text ">You are now just one bid away from travelling in Air India's Business or First class</p>
   
    </div>
  </div>
</div>
        <img src="images/div3.1.jpg" class="img-fluid" alt="...">
        
   
    </body>
</html>
