
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login as Customer</title>
    </head>
    <body>
        <%
            try {
                String username = request.getParameter("username");
                String password1 = request.getParameter("password1");
                Class.forName("com.mysql.jdbc.Driver");
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/seproj", "root", "");
                Statement st = connect.createStatement();
                ResultSet result = st.executeQuery("select * from loginforcust where username='"+username+"' and password1='"+password1+"';");
                int count=0;
                while(result.next()){
                    count++;
                }
                if (count>0) {
                    session.setAttribute("username", username);
                        response.sendRedirect("mainPage.jsp");
                }else{
                    response.sendRedirect("index.html");
                }
            } catch (Exception e) {
                out.println(e);
            }
            
        %>
    </body>
</html>
