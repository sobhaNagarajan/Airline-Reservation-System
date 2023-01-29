<%-- 
    Document   : Forgot1
    Created on : 11 Dec, 2022, 9:12:14 PM
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
       try{
        String email=request.getParameter("email");
            String password=request.getParameter("password");
           String reenterpass=request.getParameter("reenterpass");
          if(password.equals(reenterpass)){
            String d="update tableone set Password='"+password+"' where Email='"+email+"'";
            Class.forName("com.mysql.jdbc.Driver");
            Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
            Statement st=ob.createStatement();
            int i=st.executeUpdate(d);
            if(i>0){
                %>
               
                <script>
                    alert("Password Updated");   
                   window.location="Login.jsp";
                    </script>
                    <%       
            }
 else{
%>
<script>
    alert("Failed to Update");
     window.location="Forgot.jsp";
    </script>
    <%
        
}
}
else{
%>
  <script>
    alert("Password Mismatch");
     window.location="Forgot.jsp";
    </script>
    <%
     }
}
catch(Exception e){
         
      }

%>
    </body>
</html>
