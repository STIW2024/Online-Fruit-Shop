
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile</title>
    </head>
    <body>
        <div class="header">
            <%
                String a = session.getAttribute("username").toString();
                out.println("Login As  " + a);
                // HERE IS CUSTOMER PAGE
            ResultSet rs = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/seproj","root","");//URL, ID, Password for Database
                Statement st = connect.createStatement();
                rs = st.executeQuery("select * from loginforcust where username='"+a+"';");
                String uName = rs.getString(1);
                String cName = rs.getString(4);
                out.println(cName);
                //String cName1 = session.getAttribute("cName").toString();
            }catch(Exception e){
                out.println(e);
            }
            %>
            <p>Online Fruit Sales</p>
            <a href="logout.jsp">Logout</a>
        </div>
        <h1 align="center">Update Your Account</h1>
        <form style="border:1px solid #ccc" action="updateProcess.jsp" method="post">
            <div class="container">
                <p><b>Password:</b> 
                    <input type="password" placeholder="Enter Password" name="password1" id="password1" onkeyup="check();" required pattern="(?=.*\d)(?=.*[a-z]){6,}"
                           title="Password at least size of 6 with at least 1 digit and 1 character">
                    <a id="showPass1" href="#">Show Password</a>
                </p>
                <p><b>Re-Peat Password:</b> 
                    <input type="password" name="password2" placeholder="Repeat Password" id="password2" onkeyup="check();" 
                           title="Please Repeat the password"/>
                    <a id="showPass2" href="#">Show Password</a>
                    <span id="message"></span>
                </p>
                <p><b>E-mail:</b> 
                    <input type="email" id="email" name="email" placeholder="Enter Email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
                           title="Please enter Email with standard format" />
                </p>
                </p>
                <p><b>Customer Phone Number:</b> 
                    <input type="text" id="custPhone" name="custPhone" placeholder="Enter Phone Number" required pattern="\d+"
                           title="Please enter Your Phone Number"/>
                </p>
                <p><b>Customer Address:</b>
                    <input type="text" name="custAddr" placeholder="Enter Address" required 
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
                <br>
            </div>
            <div class="clearfix">
                <form action="mainPage.jsp">
                    <button type="submit" class="cancelbtn" value="cancel">Cancel</button>
                </form>
                <form action="updateProcess.jsp">
                    <button type="submit" class="signupbtn" onclick="check()" value="update">Update</button>
                </form>
            </div>
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
                //End Script
            </script>

            
            <div style="position: absolute; bottom: 4px; background-color: black">
                <font size="2" color="white">_2017, Online Fruits Sale. All Right Reserved_</font>
            </div>
    </body>
</html>
