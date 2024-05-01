import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AddToWishlistServlet")
public class AddToWishlistServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
        String productId = request.getParameter("productId");
        
       
        HttpSession session = request.getSession();
        Integer clientId = (Integer) session.getAttribute("userId");
        

        if (productId != null && clientId != null) {
        
            String url = "jdbc:mysql://localhost:3306/ecommerce";
            String user = "root";
            String password = "";
            

            String insertQuery = "INSERT INTO wishlist (ClientId, ProductId) VALUES (?, ?)";
            
            try (Connection connection = DriverManager.getConnection(url, user, password);
                 PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
     
                preparedStatement.setInt(1, clientId);
                preparedStatement.setString(2, productId);
                
       
                int rowsInserted = preparedStatement.executeUpdate();
                
                if (rowsInserted > 0) {
        
                    PrintWriter out = response.getWriter();
                    out.println("Product added to wishlist successfully!");
                } else {
                    PrintWriter out = response.getWriter();
                    out.println("Failed to add product to wishlist.");
                }
            } catch (SQLException e) {
          
                e.printStackTrace();
                PrintWriter out = response.getWriter();
                out.println("Error: Unable to connect to the database.");
            }
        } else {
      
            PrintWriter out = response.getWriter();
            out.println("Error: Product ID or client ID is missing.");
        }
    }
}
