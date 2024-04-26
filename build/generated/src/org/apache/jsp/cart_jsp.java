package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"small_container cart-page\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                <th>Product</th>\n");
      out.write("                <th>Quantity</th>\n");
      out.write("                <th>Subtotal</th>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                       <div class=\"cart_info\">\n");
      out.write("                        <img src=\"image.jpeg\" >\n");
      out.write("                        <div>\n");
      out.write("                            <p>Red Printed Tshirt</p>\n");
      out.write("                            <small> Price: $50.00</small>\n");
      out.write("                            <br>\n");
      out.write("                            <a href=\"\">Remove</a>\n");
      out.write("                        </div>\n");
      out.write("                       </div> \n");
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                    <td><input type=\"number\" value=\"1\"></td>\n");
      out.write("                    <td>$50</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                       <div class=\"cart_info\">\n");
      out.write("                        <img src=\"image.jpeg\" >\n");
      out.write("                        <div>\n");
      out.write("                            <p>Red Printed Tshirt</p>\n");
      out.write("                            <small> Price: $50.00</small>\n");
      out.write("                            <br>\n");
      out.write("                            <a href=\"\">Remove</a>\n");
      out.write("                        </div>\n");
      out.write("                       </div> \n");
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                    <td><input type=\"number\" value=\"1\"></td>\n");
      out.write("                    <td>$50</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                       <div class=\"cart_info\">\n");
      out.write("                        <img src=\"image.jpeg\" >\n");
      out.write("                        <div>\n");
      out.write("                            <p>Red Printed Tshirt</p>\n");
      out.write("                            <small> Price: $50.00</small>\n");
      out.write("                            <br>\n");
      out.write("                            <a href=\"\">Remove</a>\n");
      out.write("                        </div>\n");
      out.write("                       </div> \n");
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                    <td><input type=\"number\" value=\"1\"></td>\n");
      out.write("                    <td>$50</td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("            <div class=\"total_price\">\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Subtotal</td>\n");
      out.write("                        <td>$150.00</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Shipping</td>\n");
      out.write("                        <td>$50.00</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Total</td>\n");
      out.write("                        <td>$200.00</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <div class=\"bar\">\n");
      out.write("                                Proceed To Checkout\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
