<%-- 
    Document   : mybookings
    Created on : 16 Dec, 2022, 3:07:15 PM
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
                    .fli{
                        color:white;
                        margin-left:400px;
                    }
                    .lib1{
                        color:white;
                        margin-left:530px;
                    }
                     .lib2{
                        color:white;
                        margin-left:400px;
                    }
                       body{
                background-image: url("images/div13.1.jpg");
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
            <a class="nav-link active text-danger" href="mybookings.jsp"><b>My Bookings</b></a>
          </li>
          
              <li class="nav-item">
            <a class="nav-link active text-white" href="index.jsp"><b>Logout</b></a>
          </li>
         
        </ul>
      </div>
    </div>
  </nav>
          
            <%  
            String Flight_No = (String)session.getAttribute("Flino"); 
            %>
            <label class="fli text-dark"><%out.println("<h1><b>Flight_No " +Flight_No  + " Booked !!!</b></h1>");%></label>
<%
if(Flight_No.equals("")){
    %>
  <script>
      alert("failed");
      window.location="mybookings.jsp";
 </script>
 <%
}
else{
    String d="select * from allfight where Flight_No='"+Flight_No+"'";
            Class.forName("com.mysql.jdbc.Driver");
            Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
            Statement st=ob.createStatement();
            ResultSet i=st.executeQuery(d);
            if (i.next()){   
                %>
         <table class="table table-dark table-hover mt-3">
  <thead>
    <tr>
     <th scope="col">sno</th>
            <th scope="col"> Flight_No</th>
             <th scope="col"> Flight_Name</th>
              <th scope="col"> From_City</th>
               <th scope="col"> To_City</th> 
               <th scope="col"> Departure_Time</th>
                <th scope="col"> Arrival_Time</th>
                 <th scope="col"> Date</th>
        
                  <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
      <tr>
          
      <td><%=i.getInt("sno")%></td>
                    <td><%=i.getString("Flight_No")%></td>
                    <td><%=i.getString("Flight_Name")%></td>
                    <td><%=i.getString("From_City")%></td>
                    <td><%=i.getString("To_City")%></td>
                    <td><%=i.getTime("Departure_Time")%></td>
                    <td><%=i.getTime("Arrival_Time")%></td>
                    <td><%=i.getDate("Date")%></td>
                
                      <td>Ticket Booked</a></td>
                      
    </tr>
                <%
}
}
    %>
    
  </tbody>
</table>
    <label class="lib1 text-dark"><h3><b>Payment Successful</b></h3></label><br>
        <label class="lib2 text-dark"><h3><b>Thanks for Choosing GET SET GO Airlines</b></h3></label>
    </body>
</html>
