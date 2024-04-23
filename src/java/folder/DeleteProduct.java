import folder.Database;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeleteProduct", urlPatterns = {"/DeleteProduct"})
public class DeleteProduct extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String productId = request.getParameter("ProductID");
        if (productId != null && !productId.isEmpty()) {
            int productID = Integer.parseInt(productId);
            
            try {
                Connection con = Database.getConnection();

                String query = "DELETE FROM products WHERE ProductID=?";
                PreparedStatement pstmt = con.prepareStatement(query);
                pstmt.setInt(1, productID);

                int rowsAffected = pstmt.executeUpdate();

                pstmt.close();
                con.close();

                if (rowsAffected > 0) {
                    request.setAttribute("message", "Product with ID " + productID + " deleted successfully!");
                } else {
                    request.setAttribute("message", "Failed to delete product with ID " + productID + "!");
                }
            } catch (SQLException e) {
                request.setAttribute("error", "Error: " + e.getMessage());
            }
        } else {
            request.setAttribute("error", "ProductID parameter is missing or empty!");
        }
        
        request.getRequestDispatcher("/deleteProductResult.jsp").forward(request, response);
    }
}
