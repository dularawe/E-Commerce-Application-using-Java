package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Register</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <form action=\"register.php\" method=\"post\">\r\n");
      out.write("        <label for=\"first_name\">First Name:</label><br>\r\n");
      out.write("        <input type=\"text\" id=\"first_name\" name=\"first_name\" required><br>\r\n");
      out.write("        \r\n");
      out.write("        <label for=\"last_name\">Last Name:</label><br>\r\n");
      out.write("        <input type=\"text\" id=\"last_name\" name=\"last_name\" required><br>\r\n");
      out.write("        \r\n");
      out.write("        <label for=\"gender\">Gender:</label><br>\r\n");
      out.write("        <select id=\"gender\" name=\"gender\">\r\n");
      out.write("            <option value=\"male\">Male</option>\r\n");
      out.write("            <option value=\"female\">Female</option>\r\n");
      out.write("            <option value=\"other\">Other</option>\r\n");
      out.write("        </select><br>\r\n");
      out.write("        \r\n");
      out.write("        <label for=\"mobile\">Mobile:</label><br>\r\n");
      out.write("        <input type=\"text\" id=\"mobile\" name=\"mobile\" required><br>\r\n");
      out.write("        \r\n");
      out.write("        <label for=\"email\">Email:</label><br>\r\n");
      out.write("        <input type=\"email\" id=\"email\" name=\"email\" required><br>\r\n");
      out.write("        \r\n");
      out.write("        <label for=\"password\">Password:</label><br>\r\n");
      out.write("        <input type=\"password\" id=\"password\" name=\"password\" required><br>\r\n");
      out.write("        \r\n");
      out.write("        <label for=\"address\">Address:</label><br>\r\n");
      out.write("        <textarea id=\"address\" name=\"address\" rows=\"4\" cols=\"50\" required></textarea><br>\r\n");
      out.write("        \r\n");
      out.write("        <input type=\"submit\" value=\"Register\">\r\n");
      out.write("    </form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
