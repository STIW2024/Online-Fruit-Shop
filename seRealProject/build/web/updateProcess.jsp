
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATING </title>
    </head>
    <body>
        <%
            String a = session.getAttribute("username").toString();
            String password1 = request.getParameter("password1");
            String email = request.getParameter("email");
            String custPhone = request.getParameter("custPhone");
            String custAddr = request.getParameter("custAddr");
            String payment = request.getParameter("payment");
            String cardNum = request.getParameter("cardNum");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/seproj","root","");//URL, ID, Password for Database
                PreparedStatement ps = null;
                String sql = "UPDATE loginforcust SET password1=?, email=?, custPhone=?, custAddr=?, payment=?, cardNum=? WHERE username=?";
                ps = connect.prepareStatement(sql);
                ps.setString(1, password1);
                ps.setString(2, email);
                ps.setString(3, custPhone);
                ps.setString(4, custAddr);
                ps.setString(5, payment);
                ps.setString(6, cardNum);
                ps.setString(7, a);
                ps.executeUpdate();
                connect.close();
            }catch(Exception e){
                out.println(e);
            }
        %>
        
        <h1>Update Successful</h1>
        <a href="mainPage.jsp">Back</>
    </body>
</html>
