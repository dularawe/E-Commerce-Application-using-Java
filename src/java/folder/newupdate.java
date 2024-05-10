package folder;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "newupdate", urlPatterns = {"/newupdate"})
@MultipartConfig
public class newupdate extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Product Update Result</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Product Update Result</h1>");
            out.println("<p>This servlet is meant for updating product information.</p>");
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

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        int productQuantity = Integer.parseInt(request.getParameter("ProductQuantity"));

        Part filePart = request.getPart("picture");
        String picture = getSubmittedFileName(filePart);
        
        try {
            String uploadDirectory = "E:\\New Folder\\AdminDash\\web\\images\\";
            File uploadDir = new File(uploadDirectory);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            String uploadPath = uploadDirectory + File.separator + picture;
            try (InputStream is = filePart.getInputStream()) {
                Files.copy(is, Paths.get(uploadPath), StandardCopyOption.REPLACE_EXISTING);
            }

            String url = "jdbc:mysql://localhost:3306/ecommerce";
            String username = "root";
            String password = "";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);

            String query = "UPDATE products SET ProductImage=?, ProductName=?, ProductDescription=?, Price=?, ProductQuantity=? WHERE ProductID=?";
            PreparedStatement st = con.prepareStatement(query);

            st.setString(1, picture);
            st.setString(2, name);
            st.setString(3, description);
            st.setString(4, price);
            st.setInt(5, productQuantity);
            st.setInt(6, id);

            int rowsAffected = st.executeUpdate();

            st.close();
            con.close();

            if (rowsAffected > 0) {
                request.getRequestDispatcher("adminHome.jsp").forward(request, response);
            } else {
                out.println("<h3>Failed to update product with ID " + id + "!</h3>");
            }
        } catch (Exception e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }

    private String getSubmittedFileName(Part part) {
        String submittedFileName = null;
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                submittedFileName = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return submittedFileName;
    }

}
