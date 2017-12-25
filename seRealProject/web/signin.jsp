
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="loginCSS.css" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register as a New Account</title>
    </head>
    <body>
        <h1 align="center">Create New Account</h1>
        <form style="border:1px solid #ccc" action="signindb.jsp">
            <div class="container">
                <p><b>Username:</b> 
                    <input type="text" id="username" name="username" placeholder="Enter Username" required
                           title="Please enter Username with digit and character only"/>
                </p>
                <p><b>Password:</b> 
                    <input type="password" placeholder="Enter Password" name="password1" id="password1" onkeyup="check();" required pattern="(?=.*\d)(?=.*[a-z]){6,}"
                           title="Password at least size of 6 with at least 1 digit and 1 character">
                </p>
                <p><b>Re-Peat Password:</b> 
                    <input type="password" name="password2" placeholder="Repeat Password" id="password2" onkeyup="check();" 
                           title="Please Repeat the password"/>
                    <span id="message"></span>
                </p>
                <p><b>E-mail:</b> 
                    <input type="email" id="email" name="email" placeholder="Enter Email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
                           title="Please enter Email with standard format"/>
                </p>
                <p><b>Customer Name:</b>
                    <input type="text" id="custName" name="custName" placeholder="Enter Name" required pattern="[A-Za-z].{4,}"
                           title="Please enter Your Name"/>
                </p>
                <p><b>Customer Phone Number:</b> 
                    <input type="text" id="custPhone" name="custPhone" placeholder="Enter Number" required pattern="\d+"
                           title="Please enter Your Phone Number"/>
                </p>
                <p><b>Customer Address:</b>
                    <input type="text" name="custAddr" placeholder="Enter Address" required 
                           title="Please enter Your Address"/>
                </p>
                <br>
            </div>
            <div class="clearfix">
                <button type="button" class="cancelbtn">Cancel</button>
                <form action="signindb.jsp">
                    <button type="submit" class="signupbtn" onclick="check()" value="Sign in">Sign Up</button>
                </form>
            </div>
            <script>
                var check = function () {
                    if (document.getElementById('password1').value ===
                            document.getElementById('password2').value) {
                        document.getElementById('message').style.color = "green";
                        document.getElementById('message').innerHTML = "Matching";
                    } else {
                        document.getElementById('message').style.color = "red";
                        document.getElementById('message').innerHTML = "Not Matching";
                    }
                };
            </script>
    </body>
</html>
