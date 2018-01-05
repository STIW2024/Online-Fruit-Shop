
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="signupCSS.css" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register as a New Account</title>
    </head>
    <body>
        <h1 align="center">Create New Account</h1>
        <a href="index.html" value="back">Back</a>
        <form style="border:1px solid #ccc" action="signUpProcess.jsp">
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
                    <button type="reset" class="cancelbtn" id="reset">Reset</button>
                <form action="signUpProcess.jsp">
                    <button type="submit" class="signupbtn" onclick="check();" value="SignUp">Sign Up</button>
                </form>
            </div>
            <div class="footer">
                <a href="#" onclick="msg1()">Contact Us</a>
                <a href="#" onclick="msg2()">About US</a>
                <a href="#" onclick="msg3()" >Help</a>
            </div>
            <div style="position: fixed; bottom: 4px; background-color: black">
                <font size="2" color="white">_2017, Online Fruits Sale. All Right Reserved_</font>
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

                //Show Password 
                function show() {
                    var p = document.getElementById('password1');
                    p.setAttribute('type', 'text');
                }
                function hide() {
                    var p = document.getElementById('password1');
                    p.setAttribute('type', 'password');
                }
                var pwShown = 0; //password 1
                document.getElementById("showPass1").addEventListener("click", function () {
                    if (pwShown === 0) {
                        pwShown = 1;
                        show();
                    } else {
                        pwShown = 0;
                        hide();
                    }
                }, false);

                // Show Password For Repeat Password
                function show1() {
                    var p = document.getElementById('password2');
                    p.setAttribute('type', 'text');
                }

                function hide1() {
                    var p = document.getElementById('password2');
                    p.setAttribute('type', 'password');
                }

                var pwShown1 = 0; //password 2
                document.getElementById("showPass2").addEventListener("click", function () {
                    if (pwShown1 === 0) {
                        pwShown1 = 1;
                        show1();
                    } else {
                        pwShown1 = 0;
                        hide1();
                    }
                }, false);
                
                function welcome(){
                alert("Welcome To Online Fruits Sale Website");
            }
            function msg1() {// message of contact us
                alert("\
            Here Is Online Fruit Sale Helping Center\n\
        \n *****************************************************************\n\
        If U wish To Contact us\n\
        U can Contact Us via \n\
        Email ----> kopibryant55@gmail.com\n\
        OR\n\
        OfficePhone Number ----> +60-999-9999\n\
        \n *****************************************************************\n\
        ##########   Thank You For Your Support !   ##########");
            }
            function msg2() { //message of about us
                alert("\
        THIS IS STIW2024 SOFRWARE ENGINEERING GROUP PROJECT\n\
        \n *****************************************************************\n\
        This is the HTML AND JSP Created Webside\n\
        GROUP MEMBER :\n\
        *****************************************************************\n\
        1. WangBo\n\
        2. Lim Kok Peng\n\
        3. Loi Tong Fong\n\
        4.Yang YiFei\n\
            ##########   THANK YOU!   ##########");
            }
            function msg3() { //message of Help
                alert("\
        Hello Welcome to Online Fruit Sale HELPING CENTER\n\
        \n *****************************************************************\n\
        Buy Desired Fruit By Clicking The Fruit Image --->CLick Click     \n\
        AND                                                                 \n\
        The Detail Of the Fruits Will Show In NEXT PAGE \n\
        Any Problem Please Contact us via\n\
        Email ----> kopibryant55@gmail.com   \n\
        OR                                                              \n\
        OfficePhone Number ----> +60-999-9999                           \n\
        \n\******************************************************************\n\
    \n\           We Are Trying To Serve Our Customer WELL \n\
        ##########  Thank You For Your Support !  ##########");
            }
                //End Script
            </script>
    </body>
</html>
