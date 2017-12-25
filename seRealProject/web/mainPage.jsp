
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="mainPageCSS.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Fruit Sales</title>
    </head>
    <body>
        <div class="header">
            <%
                String a = session.getAttribute("username").toString();
                //String b = session.getAttribute("usernamea").toString();
                out.println("Login As  " + a);
            %>
            <p>Online Fruit Sales</p>
            <a href="logout.jsp">Logout</a>
        </div>
            <div class="custMenu">
                <a href="custorder.jsp">View Order</a>
                <a href="updateProfile.jsp">Update Profile</a>
            </div>
        <div class="gallery">
            <a href="GongPear.jsp" target="_blank">
                <img src="https://doremi.my/wp-content/uploads/2015/05/gong-pear-300x300.jpg" alt="GongPear" weight="400" height="400" class="image" border="0"></a>
            <div class="desc">
                Gong Pear
                <p>6 pcs Rm 9.99
            </div>
        </div>
        <div class="gallery">
            <a href="FujiApple.jsp" target="_blank">
                <img src="https://doremi.my/wp-content/uploads/2015/05/fuji-apple-CHN-300x300.jpg" alt="FujiApple" weight="400" height="400" class="image" border="0"></a>
            <div class="desc">
                FuJI Apple 
                <p>6pcs Rm 11.99
            </div>
        </div>
        <div class="gallery">
            <a href="EygptLemon.jsp" target="_blank">
                <img src="https://doremi.my/wp-content/uploads/2015/05/lemon-300x300.jpg" alt="EygptLemon" weight="400" height="400" class="image" border="0"></a>
            <div class="desc">
                Eygpt Lemon
                <p>4pcs Rm 5.99
            </div>
        </div>
        <div class="gallery">
            <a href="AutumnKingGrape.jsp" target="_blank">
                <img src="https://doremi.my/wp-content/uploads/2015/05/green-grapes-300x300.jpg" alt="AutumnKingGrape" weight="400" height="400" class="image" border="0"></a>
            <div class="desc">
                Autumn King Grape
                <p>1kg Rm 26.99
            </div>
        </div>
        <div class="gallery">
            <a href="ValenciaOrange.jsp" target="_blank">
                <img src="https://doremi.my/wp-content/uploads/2015/05/valencia-orange-300x300.jpg" alt="ValenciaOrange" weight="400" height="400" class="image" border="0"></a>
            <div class="desc">
                Valencia Orange
                <p>4pcs Rm 9.99
            </div>
        </div>
        <br><br><br><br>
        <div class="footer">
            <a href="#" onclick="msg1()">Contact Us</a>
            <a href="#" onclick="msg2()">About US</a>
            <a href="#" onclick="msg3()" >Help</a>
        </div>  
        <br>
        <div style="position: absolute; bottom: 4px; background-color: black">
            <font size="2" color="white">_2017, Online Fruits Sale. All Right Reserved_</font>
        </div>

        <script>
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
        </script>
    </body>
</html>
