import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/register"})
public class register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String gender = request.getParameter("gender");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address");

        String url = "jdbc:mysql://localhost:3306/ecommerce";
        String user = "root";
        String dbPassword = "";

        try {
            Class.forName("com.mysql.jdbc.Driver");

            try (Connection conn = DriverManager.getConnection(url, user, dbPassword)) {
                String sql = "INSERT INTO users (FirstName, LastName, Gender, Mobile, Email, Password, Address) VALUES (?, ?, ?, ?, ?, ?, ?)";
                try (PreparedStatement statement = conn.prepareStatement(sql)) {
                    statement.setString(1, firstName);
                    statement.setString(2, lastName);
                    statement.setString(3, gender);
                    statement.setString(4, mobile);
                    statement.setString(5, email);
                    statement.setString(6, password);
                    statement.setString(7, address);

                    int rowsInserted = statement.executeUpdate();
                    if (rowsInserted > 0) {
                        // Registration successful, redirect to login.jsp
                        response.sendRedirect("login.jsp");
                    } else {
                        response.getWriter().println("<h2>Registration failed. Please try again!</h2>");
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException | IOException e) {
            response.getWriter().println("An error occurred: " + e.getMessage());
        }
    }
}
