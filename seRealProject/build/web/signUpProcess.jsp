
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Database</title>
    </head>
    <body>       
        <%
            String username = request.getParameter("username");
            String password1 = request.getParameter("password1");
            String email = request.getParameter("email");
            String custName = request.getParameter("custName");
            String custPhone = request.getParameter("custPhone");
            String custAddr = request.getParameter("custAddr");
            String payment = request.getParameter("payment");
            String cardNum = request.getParameter("cardNum");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/seproj","root","");//URL, ID, Password for Database
                Statement st = connect.createStatement();
                st.executeUpdate("insert into loginforcust values('"+username+"','"+password1+"','"+email+"','"+custName+"','"+custPhone+"','"+custAddr+"','"+payment+"','"+cardNum+"')");
                connect.close();
            }catch(Exception e){
                out.println(e);
            }
        %>
        
        <h1>Successful Create new Account</h1>
        <h2>Please Login to Continue</h2>
        <a href="index.html">Click Here</>
    </body>
</html>
