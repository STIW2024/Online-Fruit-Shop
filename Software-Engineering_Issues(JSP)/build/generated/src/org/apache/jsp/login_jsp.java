package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("        <link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet'>\n");
      out.write("        <link href=\"./css/Loginbox.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js\"></script> \n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\n");
      out.write("    <body>\n");
      out.write("        <div class=\"text-center\" style=\"padding:12% 0\">\n");
      out.write("            <div class=\"logo\">Login</div>\n");
      out.write("            <div class=\"login-form-1\">\n");
      out.write("                <form id=\"login-form\" class=\"text-left\">\n");
      out.write("                    <div class=\"login-form-main-message\"></div>\n");
      out.write("                    <div class=\"main-login-form\">\n");
      out.write("                        <div class=\"login-group\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"lg_username\" class=\"sr-only\">Username</label>\n");
      out.write("                                <input type=\"text\" class=\"form-control input-lg\" id=\"lg_username\" name=\"lg_username\" placeholder=\"username\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"lg_password\" class=\"sr-only\">Password</label>\n");
      out.write("                                <input type=\"password\" class=\"form-control input-lg\" id=\"lg_password\" name=\"lg_password\" placeholder=\"password\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group login-group-checkbox\">\n");
      out.write("                                <input type=\"checkbox\" id=\"lg_remember\" name=\"lg_remember\">\n");
      out.write("                                <label for=\"lg_remember\">remember</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <button type=\"submit\" id=\"check\" class=\"login-button\"><i class=\"fa fa-chevron-right\"></i></button>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");

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
            
      out.write("\n");
      out.write("            ");
      if (true) {
        _jspx_page_context.forward("index.jsp");
        return;
      }
      out.write("\n");
      out.write("            ");

            }
            else{
                
            }
        }
        catch(Exception e){             
        }
        
      out.write("\n");
      out.write("        <script src=\"./js/Loginbox.js\" type=\"text/javascript\"></script>\n");
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
