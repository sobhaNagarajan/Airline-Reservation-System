<%-- 
    Document   : Edit1
    Created on : 20 Dec, 2022, 8:29:11 PM
    Author     : Kavin
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
         String Flight_No=request.getParameter("Flight_No");
            String Flight_Name=request.getParameter("Flight_Name");
            String From_City=request.getParameter("From_City");
            String To_City=request.getParameter("To_City");
            String Departure_Time=request.getParameter("Departure_Time");
            String Arrival_Time=request.getParameter("Arrival_Time");
            String Date=request.getParameter("Date");
            String Ticket_Price=request.getParameter("Ticket_Price");
            String d="update allfight set From_City='"+From_City+"', To_City='"+To_City+"' , Departure_Time='"+Departure_Time+"' , Arrival_Time='"+Arrival_Time+"' , Date='"+Date+"' , Ticket_Price='"+Ticket_Price+"' where Flight_No='"+Flight_No+"' and Flight_Name='"+Flight_Name+"'";
            Class.forName("com.mysql.jdbc.Driver");
            Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
            Statement st=ob.createStatement();
            int i=st.executeUpdate(d);
            if(i>0){
                %>
               
                <script>
                    alert("Updated");   
                   window.location="admin.jsp";
                    </script>
                    <%       
            }
 else{
%>
<script>
    alert("Failed");
     window.location="Edit.jsp";
    </script>
    <%
        
}

%>
    </body>
</html>
