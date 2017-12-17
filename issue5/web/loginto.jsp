
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String uname = request.getParameter("uname");
            String password = request.getParameter("password");
            if (uname.equals("kopilim96") && password.equals("245667")) {

        %>
        <jsp:forward page="helloworld.jsp"/>
        <%} else {
        %>
        <font size ="45" color ="black"/>
    <body bgcolor ="lightblue"/>
    Invalid Username or Password
    <br>Please Try Again</br>
    <html:include page="index.html"/>
    <%}%>
</body>
</html>
