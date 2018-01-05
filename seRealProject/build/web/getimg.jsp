
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String connectionURL = "jdbc:mysql://localhost:3306/seproj";
                String user = "root";
                String pass = "";
                ResultSet rs = null;
                PreparedStatement ps = null;
                Connection connection = null;
                InputStream sImage;
                OutputStream img;
                try {
                    Class.forName("com.mysql.jdbc.Driver");

                    connection = DriverManager.getConnection(connectionURL, user, pass);
                    ps = connection.prepareStatement("SELECT * FROM imagedb WHERE id = 1;");
                    //ps.setString(1, "1"); // here integer number '11' is image id from the table
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        byte[] bytearray = rs.getBytes(5);
                        rs.getString(1);
                        response.setContentType("image/jpg");
                        img = response.getOutputStream();
                        img.write(bytearray);
                        img.flush();
                        img.close();
                    }
                } catch (Exception ex) {
                    out.println("error :" + ex);
                } finally {
                    rs.close();
                    ps.close();
                    connection.close();
                }

            %>
    </body>
</html>
