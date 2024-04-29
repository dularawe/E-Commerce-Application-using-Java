package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class viewproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Product</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/view.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"container\"><br>\r\n");
      out.write("        <h1>Product</h1>\r\n");
      out.write("        <a href=\"addproduct.jsp\"><input type=\"submit\" value=\"Add\" class=\"sbtn\"></a>\r\n");
      out.write("        <a href=\"update.jsp\"><input type=\"submit\" value=\"Update\" class=\"sbtn\">\r\n");
      out.write("    <div class=\"product-display\">\r\n");
      out.write("      <table class=\"product-display-table\">\r\n");
      out.write("         <thead>\r\n");
      out.write("         <tr>\r\n");
      out.write("            <th>ID</th>\r\n");
      out.write("            <th>Image</th>\r\n");
      out.write("            <th>Name</th>\r\n");
      out.write("            <th>Description</th>\r\n");
      out.write("            <th>Price</th>\r\n");
      out.write("            <th>Amount</th>\r\n");
      out.write("            <th>Action</th>\r\n");
      out.write("         </tr>\r\n");
      out.write("         </thead>\r\n");
      out.write("         \r\n");
      out.write("         ");

                String url = "jdbc:mysql://localhost:3306/ecommerce";
                String query = "SELECT * FROM products";
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()) { 
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                <tr>\r\n");
      out.write("                   <td>");
      out.print(rs.getInt("ProductID"));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs.getString("ProductImage"));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs.getString("ProductName"));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs.getString("ProductDescription"));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs.getString("Price"));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs.getInt("ProductQuantity"));
      out.write("</td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        ");
      out.write("\r\n");
      out.write("                        <form action=\"DeleteProduct\" method=\"post\">\r\n");
      out.write("    <input type=\"hidden\" name=\"ProductID\" value=\"");
      out.print(rs.getInt("ProductID"));
      out.write("\">\r\n");
      out.write("    <input type=\"submit\" class=\"btn\" value=\"Delete\">\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                \r\n");
      out.write("                ");
 } 
      out.write("\r\n");
      out.write("         \r\n");
      out.write("      </table>\r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
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
