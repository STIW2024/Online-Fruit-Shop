
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
        <a href="index.html" value="back">Back</a>
        <form style="border:1px solid #ccc" action="signindb.jsp">
            <div class="container">
                <p><b>Username:</b> 
                    <input type="text" id="username" name="username" placeholder="Enter Username" required 
                           title="Please enter Username with digit and character only"/>
                </p>
                <p><b>Password:</b> 
                    <input type="password" placeholder="Enter Password" name="password1" id="password1" onkeyup="check();" required pattern="(?=.*\d)(?=.*[a-z]){6,}"
                           title="Password at least size of 6 with at least 1 digit and 1 character">
                    <a id="showPass1" onclick="show1();" href="#">Show Password</a>
                </p>
                <p><b>Re-Peat Password:</b> 
                    <input type="password" name="password2" placeholder="Repeat Password" id="password2" onkeyup="check();" 
                           title="Please Repeat the password"/>
                    <a id="showPass2" href="#">Show Password</a>
                    <br>
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
                    <input type="text" name="custAddr" id="custAddr" placeholder="Enter Address" required 
                           title="Please enter Your Address"/>
                </p>
                <p><b>Payment Method:</b>
                    <select id="select" name="payment">
                        <option value="Credit Card">Credit Card
                        <option value="Master Card">Master Card
                        <option value="Visa Card">Visa Card
                        <option value="AliPay">AliPay
                    </select>
                </p>
                <p><b>Card Number:</b>
                    <input type="text" name="cardNum" id="cardNum" placeholder="Enter Card Number" required pattern="\d+"
                           title="Please Enter Valid Card Number"/>
                </p>
            </div>
            <div class="clearfix">
                    <button type="submit" class="cancelbtn" id="cancel">Cancel</button>
                <form action="signindb.jsp">
                    <button type="submit" class="signupbtn" onclick="check();" value="SignUp">Sign Up</button>
                </form>
            </div>
        </form>
        <script>
            // Display Matching Password and Repeat Password
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

            //SHow Password 
            function show1() {
                var p = document.getElementById('password1');
                p.setAttribute('type', 'text');
            }
            function hide1() {
                var p = document.getElementById('password1');
                p.setAttribute('type', 'password');
            }
            var pwShown = 0;
            document.getElementById("showPass1").addEventListener("click", function () {
                if (pwShown === 0) {
                    pwShown = 1;
                    show1();
                } else {
                    pwShown = 0;
                    hide1();
                }
            }, false);

            // Show Password For Repeat Password
            function show() {
                var p = document.getElementById('password2');
                p.setAttribute('type', 'text');
            }
            function hide() {
                var p = document.getElementById('password2');
                p.setAttribute('type', 'password');
            }
            var pwShown1 = 0;
            document.getElementById("showPass2").addEventListener("click", function () {
                if (pwShown1 === 0) {
                    pwShown1 = 1;
                    show();
                } else {
                    pwShown1 = 0;
                    hide();
                }
            }, false);
            
           
            //End Script
        </script>
    </body>
</html>
