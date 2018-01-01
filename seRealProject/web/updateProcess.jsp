
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String a = session.getAttribute("username").toString();
            String password1 = request.getParameter("password1");
            String email = request.getParameter("email");
            String custPhone = request.getParameter("custPhone");
            String custAddr = request.getParameter("custAddr");
            String payment = request.getParameter("payment");
            String cardNum = request.getParameter("cardNum");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/seproj","root","");//URL, ID, Password for Database
                Statement st = connect.createStatement();
                String sql = "update loginforcust set password1='"+password1+"', email='"+email+"', custPhone='"+custPhone+"', custAddr='"+custAddr+"', payment='"+payment+"', cardNum='"+cardNum+"' where username='"+a+"';";
                st.executeUpdate(sql);
            }catch(Exception e){
                out.println(e);
            }
        %>
        
        <h1>Update Successful</h1>
        <a href="mainPage.jsp">Back</>
    </body>
</html>
