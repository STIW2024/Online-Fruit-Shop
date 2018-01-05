
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log Out</title>
    </head>
    <body>
        <%
            session.invalidate();
        %>
        <p>
            You Have Successful Log Out, Thank You
        <p>
            Log In Again 
            <a href="index.html">Login</a>
    </body>
</html>
