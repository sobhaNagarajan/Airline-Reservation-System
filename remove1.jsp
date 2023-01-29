<%-- 
    Document   : remove1
    Created on : 20 Dec, 2022, 5:35:25 PM
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
        <title>JSP Page</title>
    </head>
    <body>
         <%
                          String Flight_No=request.getParameter("Flight_No");
            String From_City=request.getParameter("From_City");
            String To_City=request.getParameter("To_City");
            String Date=request.getParameter("Date");
            String d="delete from allfight where Flight_No='"+Flight_No+"' and From_City='"+From_City+"' and To_City='"+To_City+"' and Date='"+Date+"'";
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
    window.location="Flightreport.jsp";
    </script>
    <%
        
}

            
            
           %>
    </body>
</html>
