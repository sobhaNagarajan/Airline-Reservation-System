<%-- 
    Document   : bookticket1
    Created on : 21 Dec, 2022, 8:19:51 PM
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
                background-image: url("images/div9.1.jpg");
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
<%    
            String Email=request.getParameter("Email");
              String username = (String)session.getAttribute("SessionUser"); 
              if(Email.equals(username)){
            String h="select * from details where Email='"+Email+"'";
            Class.forName("com.mysql.jdbc.Driver");
            Connection obj=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
            Statement str=obj.createStatement();
            ResultSet j=str.executeQuery(h);
            if (j.next()){   
                %>
  <div class="container" id="tab1" >
<table class="table table-bordered  table-dark table-striped  rounded-5">
     
    <thead class="hea">
    <tr >
         <th scope="col"><h5><b> Address</b></h5></th>
     
             <th scope="col"><h5><b> City</b></h5></th>
               <th scope="col"><h5><b> State</b></h5></th>
                <th scope="col"><h5><b> Zip</b></h5></th>
                <th scope="col"> <h5><b>Country</b></h5></th>
    </tr>
    </thead>
     <tbody>
     
            
       <tr>
  
    <td><h5><%=j.getString("Address")%></h5></td>
             
                    <td><h5><%=j.getString("City")%></h5></td>
                    <td><h5><%=j.getString("State")%></h5></td>
                     
  <td><h5><%=j.getString("Zip")%></h5></td>
                    <td><h5><%=j.getString("Country")%></h5></td>
    </tr>
     </tbody>
  <thead class="hea">
      <tr>
         
                 <th scope="col"> <h5><b>Gender</b></h5></th>
                  <th scope="col"><h5><b> Name</b></h5></th>
                    <th scope="col"><h5><b> Email</b></h5></th>
                     <th scope="col"><h5><b> DOB</b></h5></th>
                       <th scope="col"><h5><b> Contact</b></h5></th>
                    
    </tr>
  </thead>
  <tbody>
        <tr>

            <td><h5><%=j.getString("Gender")%></h5></td>
                    <td><h5><%=j.getString("Name")%></h5></td>
                    <td><h5><%=j.getString("Email")%></h5></td>
                    <td><h5><%=j.getDate("DOB")%></h5></td>
                    <td><h5><%=j.getInt("Contact")%></h5></td>
    </tr>
                   
                <%
}
else{
%>
<script>
alert("Profile not Updated,Go to Account");
window.location="account.jsp";
  </script>
  <%
}       
}
else{
%>
  <script>
alert("Email doesn't not match");
window.location="bookticket.jsp";
  </script>
<%
}
%>
    
  </tbody>
</table>
  </div>
   <%
               
            String Flight_No=request.getParameter("Flight_No");
             session.setAttribute("Flino", Flight_No);
            String d="select * from allfight where Flight_No='"+Flight_No+"'";
            Class.forName("com.mysql.jdbc.Driver");
            Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
            Statement st=ob.createStatement();
            ResultSet i=st.executeQuery(d);
            if (i.next()){   
                %>
  <div class="container " id="tab" >
   
<table class="table table-bordered  table-dark table-striped  rounded-5">
     
    <thead class="hea">
    <tr >
        <th scope="col"><h5><b>Flight_No</b></h5></th>
             <th scope="col"><h5><b> Flight_Name</b></h5></th>
             <th scope="col"><h5><b> From_City</b></h5></th>
               <th scope="col"><h5><b> To_City</b></h5></th>
    </tr>
    </thead>
     <tbody>
     
            
       <tr>
  
    <td><h5><%=i.getString("Flight_No")%></h5></td>
    <td><h5><%=i.getString("Flight_Name")%></h5></td>
                    <td><h5><%=i.getString("From_City")%></h5></td>
                    <td><h5><%=i.getString("To_City")%></h5></td>
    </tr>
     </tbody>
  <thead class="hea">
      <tr>
          <th scope="col"><h5><b> Departure_Time</b></h5></th>
                <th scope="col"> <h5><b>Arrival_Time</b></h5></th>
                 <th scope="col"> <h5><b>Date</b></h5></th>
                  <th scope="col"> <h5><b>Ticket_Price</b></h5></th>
    </tr>
  </thead>
  <tbody>
        <tr>
 
  <td><h5><%=i.getTime("Departure_Time")%></h5></td>
                    <td><h5><%=i.getTime("Arrival_Time")%></h5></td>
                    <td><h5><%=i.getDate("Date")%></h5></td>
                    <td><h5><%=i.getInt("Ticket_Price")%></h5></td>
    </tr>
           
                <%
           
}
else{


}            %>
    
  </tbody>
</table>
  </div>
             <script>
                  function calc(n) {
  var price = document.getElementsByClassName("ticket_price")[n].innerHTML;
  var noTickets = document.getElementsByClassName("num")[n].value;
  var total = parseFloat(price) * noTickets;
  if (!isNaN(total))
    document.getElementsByClassName("total")[n].innerHTML = total;
 document.getElementsByClassName("total")[n].value= total;
  alert("The Total price is " + total);
}


                  </script>
                
<div class="pricetag">  
      <table>
    <thead class="hea">
        <tr>
     <th scope="col"> <h5><b>Ticket_Price</b></h5></th>
    </tr>
  </thead>
    </table>
    <div class="quantity">
        <span><b>No of Passengers: </span>
    <input type="number" class="num" oninput="calc(0)" min="1" max="1000" value="1" />
</div>
   
<div class="price" >
    
    <p><h3><b>Price Per ticket : Rs.</b><span class="ticket_price"><%=i.getInt("Ticket_Price")%></span></h3></p>
    <p><h2><b>Total :</b> <b>Rs.<span class="total" id="total">0</span></b></h2></p>

</div>
</div>
 
  
    <div class="d-grid gap-2 d-md-flex justify-content-md-end">   
<a href="bookticket.jsp" class="btn btn-primary me-md-2 " tabindex="-1" role="button" aria="true">Back</a>

<a href="payment.jsp" class="btn btn-primary me-md-2 " tabindex="-1" role="button"  aria="true"/>Confirm</a>
</div>
    </body>
</html>



