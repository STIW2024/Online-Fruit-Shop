
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login As Admin</title>
    </head>
    <body>
        <%
            try {
                String usernamea = request.getParameter("usernamea");
                String passworda = request.getParameter("passworda");
                Class.forName("com.mysql.jdbc.Driver");
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/seproj", "root", "");
                Statement st = connect.createStatement();
                ResultSet result = st.executeQuery("select * from loginforadmin where usernamea='" + usernamea + "' and passworda='" + passworda + "';");
                int count = 0;
                while (result.next()) {
                    count++;
                }
                if (count > 0) {
                    session.setAttribute("usernamea", usernamea);
                    response.sendRedirect("adminpage.jsp");
                } else {
                    response.sendRedirect("index.html");
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>
