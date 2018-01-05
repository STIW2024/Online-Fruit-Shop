package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class signUp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"signupCSS.css\" >\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Register as a New Account</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1 align=\"center\">Create New Account</h1>\n");
      out.write("        <a href=\"index.html\" value=\"back\">Back</a>\n");
      out.write("        <form style=\"border:1px solid #ccc\" action=\"signUpProcess.jsp\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <p><b>Username:</b> \n");
      out.write("                    <input type=\"text\" id=\"username\" name=\"username\" placeholder=\"Enter Username\" required \n");
      out.write("                           title=\"Please enter Username with digit and character only\"/>\n");
      out.write("                </p>\n");
      out.write("                <p><b>Password:</b> \n");
      out.write("                    <input type=\"password\" placeholder=\"Enter Password\" name=\"password1\" id=\"password1\" onkeyup=\"check();\" required pattern=\"(?=.*\\d)(?=.*[a-z]){6,}\"\n");
      out.write("                           title=\"Password at least size of 6 with at least 1 digit and 1 character\">\n");
      out.write("                    <a id=\"showPass1\" onclick=\"show1();\" href=\"#\">Show Password</a>\n");
      out.write("                </p>\n");
      out.write("                <p><b>Re-Peat Password:</b> \n");
      out.write("                    <input type=\"password\" name=\"password2\" placeholder=\"Repeat Password\" id=\"password2\" onkeyup=\"check();\" \n");
      out.write("                           title=\"Please Repeat the password\"/>\n");
      out.write("                    <a id=\"showPass2\" href=\"#\">Show Password</a>\n");
      out.write("                    <br>\n");
      out.write("                    <span id=\"message\"></span>\n");
      out.write("                </p>\n");
      out.write("                <p><b>E-mail:</b> \n");
      out.write("                    <input type=\"email\" id=\"email\" name=\"email\" placeholder=\"Enter Email\" required pattern=\"[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}$\"\n");
      out.write("                           title=\"Please enter Email with standard format\"/>\n");
      out.write("                </p>\n");
      out.write("                <p><b>Customer Name:</b>\n");
      out.write("                    <input type=\"text\" id=\"custName\" name=\"custName\" placeholder=\"Enter Name\" required pattern=\"[A-Za-z].{4,}\"\n");
      out.write("                           title=\"Please enter Your Name\"/>\n");
      out.write("                </p>\n");
      out.write("                <p><b>Customer Phone Number:</b> \n");
      out.write("                    <input type=\"text\" id=\"custPhone\" name=\"custPhone\" placeholder=\"Enter Number\" required pattern=\"\\d+\"\n");
      out.write("                           title=\"Please enter Your Phone Number\"/>\n");
      out.write("                </p>\n");
      out.write("                <p><b>Customer Address:</b>\n");
      out.write("                    <input type=\"text\" name=\"custAddr\" id=\"custAddr\" placeholder=\"Enter Address\" required \n");
      out.write("                           title=\"Please enter Your Address\"/>\n");
      out.write("                </p>\n");
      out.write("                <p><b>Payment Method:</b>\n");
      out.write("                    <select id=\"select\" name=\"payment\">\n");
      out.write("                        <option value=\"Credit Card\">Credit Card\n");
      out.write("                        <option value=\"Master Card\">Master Card\n");
      out.write("                        <option value=\"Visa Card\">Visa Card\n");
      out.write("                        <option value=\"AliPay\">AliPay\n");
      out.write("                    </select>\n");
      out.write("                </p>\n");
      out.write("                <p><b>Card Number:</b>\n");
      out.write("                    <input type=\"text\" name=\"cardNum\" id=\"cardNum\" placeholder=\"Enter Card Number\" required pattern=\"\\d+\"\n");
      out.write("                           title=\"Please Enter Valid Card Number\"/>\n");
      out.write("                </p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"clearfix\">\n");
      out.write("                    <button type=\"reset\" class=\"cancelbtn\" id=\"reset\">Reset</button>\n");
      out.write("                <form action=\"signUpProcess.jsp\">\n");
      out.write("                    <button type=\"submit\" class=\"signupbtn\" onclick=\"check();\" value=\"SignUp\">Sign Up</button>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer\">\n");
      out.write("                <a href=\"#\" onclick=\"msg1()\">Contact Us</a>\n");
      out.write("                <a href=\"#\" onclick=\"msg2()\">About US</a>\n");
      out.write("                <a href=\"#\" onclick=\"msg3()\" >Help</a>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"position: fixed; bottom: 4px; background-color: black\">\n");
      out.write("                <font size=\"2\" color=\"white\">_2017, Online Fruits Sale. All Right Reserved_</font>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("            <script>\n");
      out.write("                // Display Matching Password and Repeat Password\n");
      out.write("                var check = function () {\n");
      out.write("                    if (document.getElementById('password1').value ===\n");
      out.write("                            document.getElementById('password2').value) {\n");
      out.write("                        document.getElementById('message').style.color = \"green\";\n");
      out.write("                        document.getElementById('message').innerHTML = \"Matching\";\n");
      out.write("                    } else {\n");
      out.write("                        document.getElementById('message').style.color = \"red\";\n");
      out.write("                        document.getElementById('message').innerHTML = \"Not Matching\";\n");
      out.write("                    }\n");
      out.write("                };\n");
      out.write("\n");
      out.write("                //Show Password \n");
      out.write("                function show() {\n");
      out.write("                    var p = document.getElementById('password1');\n");
      out.write("                    p.setAttribute('type', 'text');\n");
      out.write("                }\n");
      out.write("                function hide() {\n");
      out.write("                    var p = document.getElementById('password1');\n");
      out.write("                    p.setAttribute('type', 'password');\n");
      out.write("                }\n");
      out.write("                var pwShown = 0; //password 1\n");
      out.write("                document.getElementById(\"showPass1\").addEventListener(\"click\", function () {\n");
      out.write("                    if (pwShown === 0) {\n");
      out.write("                        pwShown = 1;\n");
      out.write("                        show();\n");
      out.write("                    } else {\n");
      out.write("                        pwShown = 0;\n");
      out.write("                        hide();\n");
      out.write("                    }\n");
      out.write("                }, false);\n");
      out.write("\n");
      out.write("                // Show Password For Repeat Password\n");
      out.write("                function show1() {\n");
      out.write("                    var p = document.getElementById('password2');\n");
      out.write("                    p.setAttribute('type', 'text');\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                function hide1() {\n");
      out.write("                    var p = document.getElementById('password2');\n");
      out.write("                    p.setAttribute('type', 'password');\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                var pwShown1 = 0; //password 2\n");
      out.write("                document.getElementById(\"showPass2\").addEventListener(\"click\", function () {\n");
      out.write("                    if (pwShown1 === 0) {\n");
      out.write("                        pwShown1 = 1;\n");
      out.write("                        show1();\n");
      out.write("                    } else {\n");
      out.write("                        pwShown1 = 0;\n");
      out.write("                        hide1();\n");
      out.write("                    }\n");
      out.write("                }, false);\n");
      out.write("                \n");
      out.write("                function welcome(){\n");
      out.write("                alert(\"Welcome To Online Fruits Sale Website\");\n");
      out.write("            }\n");
      out.write("            function msg1() {// message of contact us\n");
      out.write("                alert(\"\\\n");
      out.write("            Here Is Online Fruit Sale Helping Center\\n\\\n");
      out.write("        \\n *****************************************************************\\n\\\n");
      out.write("        If U wish To Contact us\\n\\\n");
      out.write("        U can Contact Us via \\n\\\n");
      out.write("        Email ----> kopibryant55@gmail.com\\n\\\n");
      out.write("        OR\\n\\\n");
      out.write("        OfficePhone Number ----> +60-999-9999\\n\\\n");
      out.write("        \\n *****************************************************************\\n\\\n");
      out.write("        ##########   Thank You For Your Support !   ##########\");\n");
      out.write("            }\n");
      out.write("            function msg2() { //message of about us\n");
      out.write("                alert(\"\\\n");
      out.write("        THIS IS STIW2024 SOFRWARE ENGINEERING GROUP PROJECT\\n\\\n");
      out.write("        \\n *****************************************************************\\n\\\n");
      out.write("        This is the HTML AND JSP Created Webside\\n\\\n");
      out.write("        GROUP MEMBER :\\n\\\n");
      out.write("        *****************************************************************\\n\\\n");
      out.write("        1. WangBo\\n\\\n");
      out.write("        2. Lim Kok Peng\\n\\\n");
      out.write("        3. Loi Tong Fong\\n\\\n");
      out.write("        4.Yang YiFei\\n\\\n");
      out.write("            ##########   THANK YOU!   ##########\");\n");
      out.write("            }\n");
      out.write("            function msg3() { //message of Help\n");
      out.write("                alert(\"\\\n");
      out.write("        Hello Welcome to Online Fruit Sale HELPING CENTER\\n\\\n");
      out.write("        \\n *****************************************************************\\n\\\n");
      out.write("        Buy Desired Fruit By Clicking The Fruit Image --->CLick Click     \\n\\\n");
      out.write("        AND                                                                 \\n\\\n");
      out.write("        The Detail Of the Fruits Will Show In NEXT PAGE \\n\\\n");
      out.write("        Any Problem Please Contact us via\\n\\\n");
      out.write("        Email ----> kopibryant55@gmail.com   \\n\\\n");
      out.write("        OR                                                              \\n\\\n");
      out.write("        OfficePhone Number ----> +60-999-9999                           \\n\\\n");
      out.write("        \\n\\******************************************************************\\n\\\n");
      out.write("    \\n\\           We Are Trying To Serve Our Customer WELL \\n\\\n");
      out.write("        ##########  Thank You For Your Support !  ##########\");\n");
      out.write("            }\n");
      out.write("                //End Script\n");
      out.write("            </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
