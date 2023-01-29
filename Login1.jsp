<%-- 
    Document   : Login1
    Created on : 11 Dec, 2022, 8:44:25 PM
    Author     : Kavin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
                
            String Email=request.getParameter("Email");
            	session.setAttribute("SessionUser", Email);
            String Password=request.getParameter("Password");
             if(Email.equals("Admin98@gmail.com") && Password.equals("Admin@123")){
                response.sendRedirect("admin.jsp");
               } 
             else{
            String d="select * from tableone where Email='"+Email+"' and Password='"+Password+"'";
            Class.forName("com.mysql.jdbc.Driver");
            Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
            Statement st=ob.createStatement();
            ResultSet i=st.executeQuery(d);
            if(i.next()){  
                %>
                <script>
                    alert("Logined Successfully");   
                   window.location="main.jsp";
                    </script>
                    
                    <%       
            }


else{
%>
<script>
    alert("Login Failed, Please try again");
    window.location="Login.jsp";
    </script>
    <%
        
}
}
            %>
    </body>
</html>
