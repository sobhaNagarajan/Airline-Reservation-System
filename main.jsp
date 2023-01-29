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
            .lab{
                color: white;
  font-style: oblique;
        
            }
            .d{
                color:white;
                padding-left: 400px;
                padding-top: 20px;
                
            }
            .row{
                    margin-left: 300px;
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
              <a class="nav-link active text-danger" href="main.jsp"><b>DashBoard</b></a>
          </li>
          <li class="nav-item">
            <a class="nav-link active text-white" href="Allflights.jsp"><b>All Flights</b></a>
          </li>
          <li class="nav-item">
            <a class="nav-link active text-white" href="account.jsp"><b>My Account</b></a>
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
        <%  
            String username = (String)session.getAttribute("SessionUser");  
            
          %>
          <label class="d"><%out.println("<h1><b>Welcome " + username + " !!!</b></h1>"); %></label>
        <form class="row gy-4 gx-3 w-75 align-items-center bg-transparent"style=height:100% action="main.jsp" method="post">    
  <div class="col-3">   
    <input type="text" class="form-control" id="autoSizingInput" placeholder="From_City" name="From_City" required >
  </div>
            <div class="col-3">
    <input type="text" class="form-control" id="autoSizingInput" placeholder="To_City" name="To_City" required>
  </div>
            <div class="col-3">
                <input type="date" class="form-control" id="autoSizingInput" placeholder="Date" name="Date" required>
  </div>
 
  <div class="col-auto">
    <button type="submit" class="btn btn-primary">Search</button>
  </div>
</form>

  
                 <%
                                    
           
            String From_City=request.getParameter("From_City");
          
            String To_City=request.getParameter("To_City");
        
            String Date=request.getParameter("Date");
      
            String d="select * from allfight where From_City='"+From_City+"' and To_City='"+To_City+"' and Date='"+Date+"'";
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
                  <th scope="col"> Ticket_Price</th>
                  <th scope="col">Booking</th>
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
                    <td><%=i.getInt("Ticket_Price")%></td>
                      <td><a class="btn btn-primary me-md-2"  role="button" href="bookticket.jsp">Book</a></td>
                      
    </tr>
                <%
}
else{

}     %>
    
  </tbody>
</table>
    </body>
</html>
