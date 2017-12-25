
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="mainPageCSS.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin View Page</title>
    </head>
    <body>
        <div class="header">
            <%
                //String a = session.getAttribute("username").toString();
                String b = session.getAttribute("usernamea").toString();
                out.println("Login As Admin __ " + b);
            %>
            <p>ADMIN MENU</p>
            <a href="logout.jsp">Logout</a>
        </div>
            <div class="container menu">
                <ul>
                    <li><a href="manageOrder.jsp">View Customer Order</a></li>
                    <li><a href="manageOrder.jsp">Manage Product</a></li>
                </ul>
                    
            </div>
            <div style="position: absolute; bottom: 4px; background-color: black">
                    <font size="2" color="white">_2017, Online Fruits Sale. All Right Reserved_</font>
            </div>
    </body>
</html>
