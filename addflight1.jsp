<%-- 
    Document   : addflight1
    Created on : 16 Dec, 2022, 10:27:52 PM
    Author     : Kavin
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            session.setAttribute("Flino", Flight_No);
            String Flight_Name=request.getParameter("Flight_Name");
            String From_City=request.getParameter("From_City");
            String To_City=request.getParameter("To_City");
            String Departure_Time=request.getParameter("Departure_Time");
            String Arrival_Time=request.getParameter("Arrival_Time");
            String Date=request.getParameter("Date");
            String Ticket_Price=request.getParameter("Ticket_Price");
             session.setAttribute("Tickprice", Ticket_Price);
            String d="insert into allfight(sno,Flight_No,Flight_Name,From_City,To_City,Departure_Time,Arrival_Time,Date,Ticket_Price)"
                    + "values(sno,'"+Flight_No+"','"+Flight_Name+"','"+From_City+"','"+To_City+"','"+Departure_Time+"','"+Arrival_Time+"','"+Date+"','"+Ticket_Price+"')";
            Class.forName("com.mysql.jdbc.Driver");
            Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
            Statement st=ob.createStatement();
            int i=st.executeUpdate(d);
            if(i>0){
                %>
                <script>
                    alert("Successfull");   
                   window.location="admin.jsp";
                    </script>
                    <%       
            }
else{
%>
<script>
    alert("Failed");
    window.location="addflight.jsp"
    </script>
    <%
        
}

            %>
    </body>
</html>
