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
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/addproduct.css\">\n");
      out.write("    <title>Add Product</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write(" <div class=\"first\">\n");
      out.write("    <h1>Add product</h1>\n");
      out.write("    <h4>Add your product for your customers</h4>\n");
      out.write("    <form action=\"product\" method=\"POST\">\n");
      out.write("        <table>\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <div class=\"box\">\n");
      out.write("                            <h3>Basic Information</h3>\n");
      out.write("                            <div class=\"box1\">\n");
      out.write("                                <h4>Input product Name</h4>\n");
      out.write("                                <input type=\"text\" name=\"ProductName\">\n");
      out.write("\n");
      out.write("                                <h4>Description</h4>\n");
      out.write("                                <input type=\"text\" name=\"description\" value=\"\"  />\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <div class=\"box\">\n");
      out.write("                            <h3></h3>\n");
      out.write("                            <div class=\"box1\">\n");
      out.write("                                <h4>Images</h4>\n");
      out.write("                                <input type=\"file\" name=\"ProductImage\">\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <div class=\"box\">\n");
      out.write("                            <div class=\"box1\">\n");
      out.write("                                <h4>Price</h4>\n");
      out.write("                                <input type=\"number\" name=\"price\" />   \n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            <div class=\"box1\">\n");
      out.write("                                <h4>Quantity</h4>\n");
      out.write("                                <input type=\"number\" name=\"quantity\"/>   \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                         <div class=\"box\">\n");
      out.write("                            <div class=\"box1\">\n");
      out.write("                                <input type=\"submit\" value=\"Submit\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"box1\">\n");
      out.write("                                <input type=\"reset\" value=\"Clear\" />\n");
      out.write("                            </div>\n");
      out.write("                        </div>  \n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("    </form>\n");
      out.write(" </div>\n");
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
