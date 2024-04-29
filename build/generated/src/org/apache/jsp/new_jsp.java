package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class new_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("    <link rel=\"stylesheet\" href=\"css/myProfile.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"lahiru\" method=\"POST\">\n");
      out.write("            <img src=\"images/images.jpg\" alt=\"\" class=\"pImage\" />\n");
      out.write("\n");
      out.write("                <div class=\"Name_Input\">\n");
      out.write("                  <span class=\"fName\"> First Name</span>\n");
      out.write("                  <input type=\"text\" name=\"FirstName\" class=\"nameInput\" required />\n");
      out.write("                  <span class=\"lName\"> Last Name</span>\n");
      out.write("                  <input type=\"text\" name=\"LastName\" class=\"nameInput1\" required />\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"DoB_Address\">\n");
      out.write("                  <span class=\"DoB\">Date of Birth</span>\n");
      out.write("                  <input type=\"date\" name=\"DoB\" class=\"dateInput\" required />\n");
      out.write("                  <span class=\"address\">Address</span>\n");
      out.write("                  <input type=\"text\" name=\"Address\" class=\"addressInput\" required />\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"gender\">\n");
      out.write("                  <span class=\"genderTitle\">Gender</span>\n");
      out.write("                  <form class=\"form2\">\n");
      out.write("                    <input type=\"radio\" id=\"male\" name=\"Gender\" value=\"male\" />\n");
      out.write("                    <label for=\"male\">Male</label>\n");
      out.write("                    <input type=\"radio\" id=\"female\" name=\"Gender\" value=\"female\" />\n");
      out.write("                    <label for=\"female\">Female</label><br />\n");
      out.write("                  </form>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"pNum\">\n");
      out.write("                  <span class=\"pNumInput\">Phone Number</span>\n");
      out.write("                  <input type=\"number\" name=\"Number\" class=\"numInput\" required />\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"Email_Cancel_Save\">\n");
      out.write("                  <span class=\"emailTitle\">Email</span>\n");
      out.write("                  <input type=\"email\" name=\"Email\" class=\"emailInput\" required />\n");
      out.write("                  <input\n");
      out.write("                    type=\"reset\"\n");
      out.write("                    value=\"Cancel\"\n");
      out.write("                    class=\"Cancel\"\n");
      out.write("                    onclick=\"clearFields()\"\n");
      out.write("                  />\n");
      out.write("                  <input type=\"submit\" value=\"Save Changes\" class=\"Save\" />\n");
      out.write("                </div>\n");
      out.write("        </form>\n");
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
