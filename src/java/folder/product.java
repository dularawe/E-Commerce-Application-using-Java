package folder;

import folder.addProduct;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;


import folder.addProduct;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.Part;

@WebServlet(name = "product", urlPatterns = {"/product"})
@MultipartConfig
public class product extends HttpServlet {



@WebServlet(name = "product", urlPatterns = {"/product"})
public class product extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet product</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet product at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        
        
        processRequest(request, response);
    }


@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    String ProductName = request.getParameter("ProductName");
    String ProductDescription = request.getParameter("description");
    
    int Price = 0;
    String priceParam = request.getParameter("price");
    if (priceParam != null && !priceParam.isEmpty()) {
        Price = Integer.parseInt(priceParam);
    }
    
    int ProductQuantity = 0;
    String quantityParam = request.getParameter("quantity");
    if (quantityParam != null && !quantityParam.isEmpty()) {
        ProductQuantity = Integer.parseInt(quantityParam);
    }
    
    Part filePart = request.getPart("ProductImage");
    
    String imageFileName = filePart.getSubmittedFileName();
    
    String uploadDirectory = "E:\\GitHub\\E-Commerce-Application-using-Java\\web\\images\\"; // Change this to your desired directory
    
    File uploadDir = new File(uploadDirectory);
    if (!uploadDir.exists()) {
        uploadDir.mkdirs();
    }
  
    String uploadPath = uploadDirectory + File.separator + imageFileName;
    try (InputStream is = filePart.getInputStream()) {
        Files.copy(is, Paths.get(uploadPath), StandardCopyOption.REPLACE_EXISTING);
    }
    
    
    addProduct b = new addProduct();
    b.insertProduct(ProductName, Price, ProductQuantity, ProductDescription, imageFileName);

    
    response.sendRedirect("viewproduct.jsp"); 
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
    
    String ProductName = request.getParameter("ProductName");
    String ProductDescription = request.getParameter("description");
    String ProductImage = request.getParameter("ProductImage");
    int Price = Integer.parseInt(request.getParameter("price"));
    int ProductQuantity = Integer.parseInt(request.getParameter("quantity"));
    
    PrintWriter out = response.getWriter();
    out.println("<script>window.location.href='viewproduct.jsp';</script>");
    
    addProduct b = new addProduct();
    b.insertProduct(ProductName,Price,ProductQuantity,ProductDescription,ProductImage);
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