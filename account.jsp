<%-- 
    Document   : account
    Created on : 16 Dec, 2022, 3:04:37 PM
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
                        background-image: url("images/div7.1.jpg");
                        background: cover;
                    }
            .login-container{
   margin:auto;
   padding-right: 50px;
}
.login-logo{
    position: relative;
    margin-left: -41.5%;
}
.login-logo img{
    position: absolute;
    width: 20%;
    margin-top: 19%;
    background: #282726;
    border-radius: 4.5rem;
    padding: 5%;
}
.login-form-1{
    
    padding: 9%;
    background:#282726;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}
.login-form-1 h3{
    text-align: center;
    margin-bottom:12%;
    color:#fff;
}
.login-form-2{
 
    padding: 9%;
    background: #f05837;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}
.login-form-2 h3{
    text-align: center;
    margin-bottom:12%;
    color: #fff;
}
.btnSubmit{
    font-weight: 600;
    width: 50%;
    color: #282726;
    background-color: #fff;
    border: none;
    border-radius: 1.5rem;
    padding:2%;
}
.btnForgetPwd{
    color: #fff;
    font-weight: 600;
    text-decoration: none;
}
.btnForgetPwd:hover{
    text-decoration:none;
    color:#fff;
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
            <a class="nav-link active text-white" href="Allflights.jsp"><b>All Flights</b></a>
          </li>
          <li class="nav-item">
            <a class="nav-link active text-danger" href="account.jsp"><b>My Account</b></a>
          </li>
          
                    <li class="nav-item">
            <a class="nav-link active text-white" href="bookticket.jsp"><b>Book Ticket</b></a>
          </li>
              <li class="nav-item">
            <a class="nav-link active text-white" href="index.jsp"><b>Logout</b></a>
          </li>
         
        </ul>
      </div>
    </div>
  </nav>
        <form action="account1.jsp">
<div class="container login-container mt-3">
            <div class="row bg-transparent" >
                <div class="col-md-6 login-form-1 ">
                    <h3>Address</h3>
                    
                        <div class="form-group mt-2">
                            <input type="text" class="form-control" placeholder="Address line 1" name="Address" required />
                        </div>
                    
                    <div class="form-group mt-2">
                            <input type="text" class="form-control" placeholder="City" name="City" required />
                        </div>
                        <div class="form-group mt-2">
                            <input type="text" class="form-control" placeholder="State/Province" name="State" required />
                        </div>
                    <div class="form-group mt-2">
                            <input type="text" class="form-control" placeholder="Zip/Postal code" name="Zip"  required/>
                        </div>
                    <div class="form-group mt-2">
                            <input type="text" class="form-control" placeholder="Country" name="Country"  required/>
                        </div>
                        
                    
                        
                    
                </div>
                <div class="col-md-6 login-form-2 ">
                    <div class="login-logo">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                    </div>
                    <h3>Details</h3>
                        <div class="form-group mt-2">
                            <input type="text" class="form-control" placeholder="Name" name="Name"  required/>
                        </div>
                        <div class="form-group mt-2">
                            <input type="text" class="form-control" placeholder="Email" name="Email" required />
                        </div>
                    <div class="form-group mt-2">
                            <input type="date" class="form-control" placeholder="DOB" name="DOB" required />
                        </div>
                    <div class="form-group mt-2">
                        <input type="tel" class="form-control" placeholder="Contact No" name="Contact" required/>
                        </div>
                    <div class="form-check form-check-inline mt-2 " >
                        <input class="form-check-input" type="radio" id="inlineRadio1" value="Male" name="Gender"><b>Male</b>
 
</div>
<div class="form-check form-check-inline">
    <input class="form-check-input" type="radio" id="inlineRadio2" value="Female" name="Gender"><b>Female</b>

</div>
                        <div class="form-group mt-3">
                            <input type="submit" class="btnSubmit" value="Save" />
                        </div>
                    
                        
                    
                </div>
            </div>
        </div>
    </form>
    </body>
</html>
