<%-- 
    Document   : Flightreport
    Created on : 16 Dec, 2022, 3:18:57 PM
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
        <meta http-equiv="Content-Type" content="text/html; cha+rset=UTF-8">
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
              <a class="nav-link active text-danger" href="Flightreport.jsp"><b>Flight Reports</b></a>
          </li>
          
                    

        
               
              <li class="nav-item">
            <a class="nav-link active text-white" href="index.jsp"><b>Logout</b></a>
          </li>
         
        </ul>
      </div>
    </div>
  </nav>

  <div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3">
      <a class="btn btn-primary me-md-2" role="button" href="Edit.jsp">Edit</a>
      <a class="btn btn-primary me-md-2" role="button" href="addflight.jsp" >Add</a>
      <a class="btn btn-primary me-md-2" role="button" href="remove.jsp">Remove</a>
</div>
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
                  <th scope="col"> Ticket_Price</th>
                            
    </tr>
  </thead>
  <tbody>
      <%
                  try{
            String d="select * from allfight";
            Class.forName("com.mysql.jdbc.Driver");
            Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
            Statement st=ob.createStatement();
            ResultSet s=st.executeQuery(d);
            while(s.next()){
                %>
                 <tr>
     
      <td><%=s.getInt("sno")%></td>
                    <td><%=s.getString("Flight_No")%></td>
                    <td><%=s.getString("Flight_Name")%></td>
                    <td><%=s.getString("From_City")%></td>
                    <td><%=s.getString("To_City")%></td>
                    <td><%=s.getTime("Departure_Time")%></td>
                    <td><%=s.getTime("Arrival_Time")%></td>
                    <td><%=s.getDate("Date")%></td>
                    <td><%=s.getInt("Ticket_Price")%></td>
                     
    </tr>
                <%}
}

catch (Exception e){
}

            %>
    
  </tbody>
</table>

    </body>
</html>
