<%-- 
    Document   : Login
    Created on : Nov 29, 2017, 10:30:00 PM
    Author     : Tong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
           String username = request.getParameter("username");
           String matric = request.getParameter("matric");
            if(username.equals("Tong Fong")&& matric.equals("245822"))
                              {%>
                              <jsp:forward page= "hello world.jsp"/>
                              <%} else
                                              {%>
                              Wrong Username or Password ! Try Again!
                              <jsp:include page="index.html"/>
                              <%} %>
    </body>
</html>
