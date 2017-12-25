
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="indexCSS.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login As Admin</title>
    </head>
    <body>
        <div class="header">
            <Center><h1>Online Fruit Sales</h1></Center>
        </div>
        <fieldset>
        <legend><h3>Login As Admin</h3></legend>
        <form action="logintoadmin.jsp">
            <b>Username:</b>
            <br>
            <input type="text" name="usernamea" size="20" placeholder="Enter Username"/>
            <br>
            <b>Password:</b>
            <br>
            <input type="password" name="passworda" size="20" placeholder="Enter Password"/>
            <br>
            <button type="submit" value="Login">Login</button> 
        </form>
    </fieldset>
    </body>
</html>
