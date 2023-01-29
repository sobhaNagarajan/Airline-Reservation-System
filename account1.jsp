<%-- 
    Document   : account1
    Created on : 19 Dec, 2022, 10:03:13 AM
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
             String sno=request.getParameter("sno");    
            String Address=request.getParameter("Address");
          
             String City=request.getParameter("City");
              String State=request.getParameter("State");
               String Zip=request.getParameter("Zip");
                String Country=request.getParameter("Country");
                String Gender=request.getParameter("Gender");
                String Name=request.getParameter("Name");
            String Email=request.getParameter("Email");
            String DOB=request.getParameter("DOB");
             String Contact=request.getParameter("Contact");
            String d="insert into details(sno,Address,City,State,Zip,Country,Gender,Name,Email,DOB,Contact) values(sno,'"+Address+"','"+City+"','"+State+"','"+Zip+"','"+Country+"','"+Gender+"','"+Name+"','"+Email+"','"+DOB+"','"+Contact+"')";
            Class.forName("com.mysql.jdbc.Driver");
            Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
            Statement st=ob.createStatement();
            int i=st.executeUpdate(d);
            if(i>0){
                %>
                <script>
                    alert("Successfull");   
                   window.location="main.jsp";
                    </script>
                    <%       
            }
else{
%>
<script>
    alert("Failed");
    window.location="account.jsp"
    </script>
    <%
        
}

            %>
    </body>
</html>
