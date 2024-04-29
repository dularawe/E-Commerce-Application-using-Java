package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import project.ConnectionProvider;
import java.sql.*;

public final class ViewAllProducts_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--");
include file="Header.jsp"
      out.write("</%include>\n");
      out.write("    <include file=\"footer.jsp\"></include>-->\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("h3\n");
      out.write("{\n");
      out.write("\tcolor: yellow;\n");
      out.write("\ttext-align: center;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div style=\"color: white; text-align: center; font-size: 30px;\">Home <i class=\"fa fa-institution\"></i></div>\n");
      out.write("    ");

       String msg=request.getParameter("msg");
       if("added".equals(msg))
       {
       
      out.write("\n");
      out.write("        <h3 class=\"alert\">Product added successsfully!</h3>\n");
      out.write("        </%>} %>\n");
      out.write("    ");

       if("exist".equals(msg))
       {
       
      out.write("\n");
      out.write("        <h3 class=\"alert\">Product already exist in your cart! Quantity increased!</h3>\n");
      out.write("        ");
} 
      out.write("\n");
      out.write("            ");

               if("invalid".equals(msg))
               {
               
      out.write("\n");
      out.write("                <h3 class=\"alert\">Some thing went wrong! Try Again!</h3>\n");
      out.write("                ");
} 
      out.write("\n");
      out.write("                \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<table>\n");
      out.write("        <thead>\n");
      out.write("          <tr>\n");
      out.write("            <th scope=\"col\">ID</th>\n");
      out.write("            <th scope=\"col\">Name</th>\n");
      out.write("            <th scope=\"col\">Category</th>\n");
      out.write("            <th scope=\"col\"><i class=\"fa fa-inr\"></i> Price</th>\n");
      out.write("            <th scope=\"col\">Add to cart <i class='fas fa-cart-plus'></i></th>\n");
      out.write("          </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("            ");

               try{
               Connection con=ConnectionProvider.getCon();
               Statement st=con.createStatement();
               ResultSet rs=st.executeQuery("select*from products where active='yes'");
               while(rs.next())
               {
               
      out.write("\n");
      out.write("          <tr>\n");
      out.write("            <td>");
 = rs.getSring(1) 
      out.write("</td>\n");
      out.write("            <td>");
 = rs.getSring(2) 
      out.write("</td>\n");
      out.write("            <td>");
 = rs.getSring(3) 
      out.write("</td>\n");
      out.write("            <td><i class=\"fa fa-inr\"></i> ");
      out.print(rs.getString(4) );
      out.write(" </td>\n");
      out.write("            <td><a href=\"addToCartAction.jsp?id=");
      out.print(rs.getString(1));
      out.write("\">Add to cart <i class='fas fa-cart-plus'></i></a></td>\n");
      out.write("          </tr>\n");
      out.write("\n");
      out.write("                ");
}
                    }
                    catch(Exception e)
                    {
                    System.out.println(e);
                    }
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("      </table>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("</%@page>\n");
      out.write("</%@page>\n");
      out.write("</%@page>");
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
