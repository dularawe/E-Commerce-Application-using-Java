/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        
        // You can perform any necessary validations here
        
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Registration Confirmation</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<center>");
        out.println("<h2>Registration Successful!</h2>");
        out.println("<p>Name: " + name + "</p>");
        out.println("<p>Email: " + email + "</p>");
        out.println("<p>Password: " + pass + "</p>");
        out.println("</center>");
        out.println("</body>");
        out.println("</html>");
    }
}
