<%-- 
    Document   : signup1
    Created on : 11 Dec, 2022, 8:46:10 PM
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
            
            String Name=request.getParameter("Name");
            String Email=request.getParameter("Email");
            String Password=request.getParameter("Password");
              String Repassword=request.getParameter("Repassword");
               if(Password.equals(Repassword)){
            String d="insert into tableone(sno,Name,Email,Password) values(sno,'"+Name+"','"+Email+"','"+Password+"')";
            Class.forName("com.mysql.jdbc.Driver");
            Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
            Statement st=ob.createStatement();
            int i=st.executeUpdate(d);
            if(i>0){
                %>
                <script>
                    alert("Accound Created Successfull");   
                   window.location="Login.jsp";
                    </script>
                    <%       
            }
else{
%>
<script>
    alert("Failed to Create an Account, Please Try again");
    window.location="signup.jsp"
    </script>
    <%
        
}
}
else{
%>
 <script>
    alert("Password Mismatch");
     window.location="signup.jsp";
    </script>
    <%
}


            %>
    </body>
</html>
