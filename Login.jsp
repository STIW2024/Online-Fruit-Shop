<%-- 
    Document   : Login
    Created on : 2017-11-28, 12:58:15
    Author     : Administrator
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
                <%
            String un = request.getParameter("username");
            String pass = request.getParameter("password");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "1021");
                PreparedStatement ps = conn.prepareStatement("SELECT * FROM login WHERE username=? AND password=?");
                ps.setString(1,un);
                ps.setString(2,pass);
                ResultSet rs = ps.executeQuery();
                if(rs.next()){        
            
                }
                else{
           out.println("Invalid login credentials"); 
                
            }
            }
            catch(Exception e){
                out.print(e);
            }
        %>
    </body>
</html>
