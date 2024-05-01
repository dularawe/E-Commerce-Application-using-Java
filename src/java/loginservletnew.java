import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginservletnew")
public class loginservletnew extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Retrieve parameters from the form
        String email = request.getParameter("mail");
        String password = request.getParameter("psw");

        // Check if email and password are provided
        if (email != null && !email.isEmpty() && password != null && !password.isEmpty()) {
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;

            try {
                // JDBC URL for MySQL
                String url = "jdbc:mysql://localhost:3306/ecommerce";
                // Database credentials
                String dbUsername = "root";
                String dbPassword = "";

                // Register JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Open a connection
                con = DriverManager.getConnection(url, dbUsername, dbPassword);

                // Prepare SQL statement to check user credentials
                String sql = "SELECT * FROM users WHERE Email=? AND Password=?";
                pst = con.prepareStatement(sql);
                pst.setString(1, email);
                pst.setString(2, password);
                rs = pst.executeQuery();

                if (rs.next()) {
                    // If user exists in the database, create a session
                    HttpSession session = request.getSession();
                    // Set session attributes
                    session.setAttribute("userId", rs.getInt("UserID")); // Assuming UserID is the column name for user ID
                    session.setAttribute("email", email);

                    // Redirect to another page
                    response.sendRedirect("my-account.jsp"); // Replace "Product.jsp" with your desired success page
                    return;
                } else {
                    // Password does not match
                    response.sendRedirect("login.jsp?error=password");
                    return;
                }
            } catch (SQLException | ClassNotFoundException e) {
                // Handle any errors
                e.printStackTrace(); // Print stack trace for debugging
                response.sendRedirect("login.jsp?error=sql"); // Redirect with SQL error
            } finally {
                // Close all resources
                try {
                    if (rs != null) rs.close();
                    if (pst != null) pst.close();
                    if (con != null) con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            // Redirect with error indicating missing email or password
            response.sendRedirect("login.jsp?error=missing");
        }
    }
}
