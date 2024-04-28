/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package folder;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@WebServlet(name = "loginservlet", urlPatterns = {"/loginservlet"})
public class loginservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginservlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginservlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Check if email and password are provided
        if (email != null && password != null) {
            try {
                // Establishing database connection
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = null;
                try {
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
                } catch (SQLException ex) {
                    Logger.getLogger(loginservlet.class.getName()).log(Level.SEVERE, null, ex);
                }

                // Query to retrieve password for the given email
                String query = "SELECT password FROM users WHERE email = ?";
                PreparedStatement preparedStatement = connection.prepareStatement(query);
                preparedStatement.setString(4, email);
                ResultSet resultSet = preparedStatement.executeQuery();

                // If email is found in the database
                if (resultSet.next()) {
                    String dbPassword = resultSet.getString("password");

                    // If the provided password matches the one in the database
                    if (password.equals(dbPassword)) {
                        // Authentication successful, create session and redirect to home.jsp

                        HttpSession httpSession = request.getSession();
                        httpSession.setAttribute("emailId", email);
                        response.sendRedirect("home.jsp");
                    } else {
                        // Password does not match
                        response.sendRedirect("login.jsp?error=password");
                    }
                } else {
                    // Email not found in the database
                    response.sendRedirect("login.jsp?error=email");
                }

                // Closing resources
                resultSet.close();
                preparedStatement.close();
                connection.close();

            } 
            catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(loginservlet.class.getName()).log(Level.SEVERE, null, ex);
                // Redirect to an error page or handle the error appropriately
                response.sendRedirect("error.jsp");
            }
        } 
        else {
            // Email or password not provided
            response.sendRedirect("login.jsp?error=empty");
            }
}
  
        

       
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
