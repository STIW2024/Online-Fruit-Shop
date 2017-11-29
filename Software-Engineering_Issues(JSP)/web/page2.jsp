<%-- 
    Document   : page2
    Created on : 2017-11-22, 1:02:10
    Author     : Aman
--%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Record</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="container">
        <br><br><br><br>
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3 ">
            <table class="table">
                <thead style="background-color: grey;">
                  <tr>
                    <th>#</th>
                    <th>Matric Number</th>
                    <th>Name</th>
                    <th>Date of Birth</th>
                  </tr>
                </thead>
                <tbody>
                <%
                    try
                    {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://node16191-neil-wang.kilatiron.com/SoftwareEngineering","Aman","748748aa");
                    Statement sta=con.createStatement();
                    String query="SELECT * from Issue3student";
                    ResultSet re =sta.executeQuery(query);
                    while(re.next())
                    {
                        int ro = re.getRow();
                        int mn = re.getInt(1);
                        String na = re.getString(2);
                        String db = re.getString(3);
                %>
                    <tr>
                        <th><%=ro%></th>
                        <td><%=mn%></td>
                        <td><%=na%></td>
                        <td><%=db%></td>
                    </tr>
                <%

                    }
                %>
                </tbody>
            </table>
                <%
                        re.close();
                        sta.close();
                        con.close();
                    }
                    catch(Exception e)
                    {
                        out.print(e);
                    }
                %>
        </div>
    </body>
</html>
