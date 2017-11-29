<%-- 
    Document   : login
    Created on : 2017-11-28, 3:07:31
    Author     : Aman
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet'>
        <link href="./css/Loginbox.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script> 
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <body>
        <div class="text-center" style="padding:12% 0">
            <div class="logo">Login</div>
            <div class="login-form-1">
                <form id="login-form" class="text-left">
                    <div class="login-form-main-message"></div>
                    <div class="main-login-form">
                        <div class="login-group">
                            <div class="form-group">
                                <label for="lg_username" class="sr-only">Username</label>
                                <input type="text" class="form-control input-lg" id="lg_username" name="lg_username" placeholder="username">
                            </div>
                            <div class="form-group">
                                <label for="lg_password" class="sr-only">Password</label>
                                <input type="password" class="form-control input-lg" id="lg_password" name="lg_password" placeholder="password">
                            </div>
                            <div class="form-group login-group-checkbox">
                                <input type="checkbox" id="lg_remember" name="lg_remember">
                                <label for="lg_remember">remember</label>
                            </div>
                        </div>
                        <button type="submit" id="check" class="login-button"><i class="fa fa-chevron-right"></i></button>
                    </div>
                </form>
            </div>
        </div>
        <%
        try{
            String username = request.getParameter("lg_username");   
            String password = request.getParameter("lg_password");
            Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SoftwareEngineering","root","748748aa" );    
            PreparedStatement pst = conn.prepareStatement("Select Username,Password from login where Username=? and Password=?");
            pst.setString(1, username);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
            %>
            <jsp:forward page="index.jsp"/>
            <%
            }
            else{
                
            }
        }
        catch(Exception e){             
        }
        %>
        <script src="./js/Loginbox.js" type="text/javascript"></script>
    </body>
</html>
