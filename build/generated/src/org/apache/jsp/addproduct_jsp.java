package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/addproduct.css\">\n");
      out.write("    <title>Add Product</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <h1>ADD NEW ITEM</h1>\n");
      out.write("        <p></p>\n");
      out.write("        <form action=\"GentServlet\" method=\"POST\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <label for=\"name\">Product Name</label>\n");
      out.write("                        <input type=\"text\" id=\"ProductName\" name=\"ProductName\" placeholder=\"ProductName\" />\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <label for=\"description\">Description</label>\n");
      out.write("                        <input type=\"text\" id=\"description\" name=\"description\" placeholder=\"Description\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <label for=\"Price\">Price</label>\n");
      out.write("                        <input type=\"text\" id=\"price\" name=\"price\" placeholder=\"Price\" />\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <label for=\"quantity\">Quantity</label>\n");
      out.write("                        <input type=\"number\" id=\"quantity\" name=\"quantity\" placeholder=\"Quantity\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            <div class=\"Add\">\n");
      out.write("                <div class=\"card\">\n");
      out.write("                    <img src=\"images/profile.png\" id=\"profile-pic\" />\n");
      out.write("                    <input type=\"file\" accept=\"image/jpeg,image/png,image/jpg\" id=\"input-file\"/>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"column\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"c\">\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <input type=\"button\" value=\"Back\" class=\"btn\">\n");
      out.write("                    </a>\n");
      out.write("                    <input type=\"reset\" value=\"Reset\" class=\"btn\" />\n");
      out.write("                    <input type=\"submit\" value=\"Submit\" class=\"btn\" />\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("    <script>\n");
      out.write("        let profilePic = document.getElementById(\"profile-pic\");\n");
      out.write("        let inputFile = document.getElementById(\"input-file\");\n");
      out.write("\n");
      out.write("        inputFile.onchange = function () {\n");
      out.write("            profilePic.src = URL.createObjectURL(inputFile.files[0]);\n");
      out.write("        };\n");
      out.write("    </script>\n");
      out.write("</body>\n");
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
