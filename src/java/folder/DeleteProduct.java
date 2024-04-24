package folder;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeleteProduct", urlPatterns = {"/DeleteProduct"})
public class DeleteProduct extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DeleteProduct</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteProduct at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        
        String productIdParam = request.getParameter("ProductID");
        if(productIdParam != null && !productIdParam.isEmpty()) {
            int ProductID = Integer.parseInt(productIdParam);
            
            try {
                
                String url = "jdbc:mysql://localhost:3306/ecommerce";
                String username = "root";
                String password = "";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, username, password);

                
                String query = "DELETE FROM products WHERE ProductID=?";
                PreparedStatement pstmt = con.prepareStatement(query);
                pstmt.setInt(1, ProductID);

                
                int rowsAffected = pstmt.executeUpdate();
                pstmt.close();
                con.close();

                
                if (rowsAffected > 0) {
                    out.println("<h3>Product with ID " + ProductID + " deleted successfully!</h3>");
                } else {
                    out.println("<h3>Failed to delete product with ID " + ProductID + "!</h3>");
                }
            } catch (Exception e) {
                out.println("<h3>Error: " + e.getMessage() + "</h3>");
            }
        } else {
           
            out.println("<h3>Error: ProductID parameter is missing or empty!</h3>");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
