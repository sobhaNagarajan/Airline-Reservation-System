
<%-- 
    Document   : Login
    Created on : 6 Dec, 2022, 9:31:46 PM
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
            .vh-100{
                background-image: url( css/div2.2.jpg);
                background-size: cover;
  background-repeat: no-repeat;
                
            }
   .row{
  margin: auto;
  width: 1000px;
  padding: 10px;
  height: 200px;
  opacity: 90%;
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
          </li>
            <a class="nav-link active text-white" aria-current="page" href="index.jsp"><b>Home</b></a>
          </li>

          <li class="nav-item">
              <a class="nav-link active text-danger" href=""><b>Login</b></a>
          </li>
          <li class="nav-item">
            <a class="nav-link active text-white" href="signup.jsp"><b>Sign Up</b></a>
          </li>
           <li class="nav-item">
            <a class="nav-link active text-white" href="aboutus.jsp"><b>About Us</b></a>
          </li>
          </li>
        </ul>
      </div>
    </div>
  </nav>
        
<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100 bg-secondary" id="kav">
      <div class="col-md-8 col-lg-7 col-xl-6">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
          class="img-fluid" alt="Phone image">
      </div>
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
        <form action="Login1.jsp" method="post" >
          <div class="form-outline mb-5">
              <input type="email" id="form1Example13" class="form-control form-control-lg" placeholder="Email Address" name="Email"  required/>
          </div>
          <div class="form-outline mb-5">
              <input type="password" id="form1Example23" class="form-control form-control-lg" placeholder="Password" name="Password" required/>       
          </div>
          <div class="d-flex justify-content-around align-items-center mb-4">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" required id="form1Example3" />
              <label class="form-check-label text-white" for="form1Example3" > Remember me </label>
            </div>
            <a href="Forgot.jsp" class="forgot">Forgot password?</a>
          </div>
          <button type="submit" class="btn btn-primary btn-lg btn-block">Sign in</button>

     

        </form>
      </div>
    </div>
  </div>
</section>
</body>
</html>
