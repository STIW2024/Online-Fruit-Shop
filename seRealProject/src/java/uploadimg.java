
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(urlPatterns = {"/uploadimg"})
@MultipartConfig(maxFileSize = 16177216)
public class uploadimg extends HttpServlet {

    PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String connect = "jdbc:mysql://localhost:3306/seproj";
        String user = "root";
        String pass = "";
        out = response.getWriter();
        int result = 0;
        Connection con = null;

        Part part = request.getPart("img");
        String iname = request.getParameter("iname");
        String idesc = request.getParameter("idesc");
        double iprice = Double.parseDouble(request.getParameter("iprice"));
        String ilocation = request.getParameter("ilocation");

        if (part != null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(connect, user, pass);
                PreparedStatement ps = con.prepareStatement("insert into imagedb(iname, idesc, iprice, ilocation, img) values(?,?,?,?,?)");
                InputStream is = part.getInputStream();

                ps.setString(1, iname);
                ps.setString(2, idesc);
                ps.setDouble(3, iprice);
                ps.setString(4, ilocation);
                ps.setBlob(5, is);

                result = ps.executeUpdate();
                if (result > 0) {
                    PrintWriter out = response.getWriter();
                    response.setContentType("text/html");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Product Saved Successful');");
                    out.println("</script>");
                    out.println("<h1>Image Inserted Succcessful</h1>");
                    out.println("<a href='adminpage.jsp' value='back'>Back</a>");
                }
            } catch (Exception e) {
                out.println(e);
            }
        }
    }

}
