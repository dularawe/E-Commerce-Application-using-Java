package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/login.css\">\r\n");
      out.write("        <title>Login_Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"container\"> \r\n");
      out.write("          \r\n");
      out.write("         <div class=\"row\">\r\n");
      out.write("              <div class=\"column_1\" style=\"background-color:#ffffcc\">\r\n");
      out.write("                   <form>\r\n");
      out.write("                  <div class=\"row_1\">\r\n");
      out.write("                      <h2>L O G I N</h2>\r\n");
      out.write("                           \r\n");
      out.write("                  </div>\r\n");
      out.write("                  \r\n");
      out.write("                      <div class=\"row_col\">\r\n");
      out.write("                          \r\n");
      out.write("                          <div class=\"or\">\r\n");
      out.write("                          If You Are Already A Member,Easily Log In\r\n");
      out.write("                          </div>\r\n");
      out.write("                          \r\n");
      out.write("                          <div class=\"row_2\">\r\n");
      out.write("                            \r\n");
      out.write("                              <input type=\"email\" placeholder=\"Email\" name=\"mail\" value=\"\" >                             \r\n");
      out.write("                        \r\n");
      out.write("                          </div>\r\n");
      out.write("                          \r\n");
      out.write("                          <div class=\"row_2\">\r\n");
      out.write("                           \r\n");
      out.write("                              <input type=\"password\" placeholder=\"Password\" name=\"psw\" value=\"\" >\r\n");
      out.write("                         \r\n");
      out.write("                          </div>\r\n");
      out.write("                          \r\n");
      out.write("                          <div class=\"row_3\">\r\n");
      out.write("                            \r\n");
      out.write("                              <input type=\"submit\" value=\"Login\" name=\"\" >\r\n");
      out.write("                         \r\n");
      out.write("                           </div>\r\n");
      out.write("                          \r\n");
      out.write("                          <div class=\"or\">\r\n");
      out.write("                             If You Are Not A Member,Easily Sign up\r\n");
      out.write("                          </div>\r\n");
      out.write("                          \r\n");
      out.write("                          <div class=\"row_3\">\r\n");
      out.write("                            \r\n");
      out.write("                              <input type=\"submit\" value=\"Sign-Up\" name=\"Cr\" >\r\n");
      out.write("                         \r\n");
      out.write("                           </div>\r\n");
      out.write("                      </div>\r\n");
      out.write("                      \r\n");
      out.write("                   </form>  \r\n");
      out.write("                  \r\n");
      out.write("              </div>\r\n");
      out.write("             <div class=\"column_2\" style=\"background-color:#cccccc;\">\r\n");
      out.write("                 \r\n");
      out.write("    \r\n");
      out.write("              </div>\r\n");
      out.write("         </div> \r\n");
      out.write("               \r\n");
      out.write("\r\n");
      out.write("               \r\n");
      out.write("          \r\n");
      out.write("           \r\n");
      out.write("             \r\n");
      out.write("        \r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
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
