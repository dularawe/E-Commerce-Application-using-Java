package folder;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class product extends HttpServlet {

    
   @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    
    String ProductName = request.getParameter("ProductName");
    String ProductDescription = request.getParameter("description");
    String ProductImage = request.getParameter("ProductImage");
    int Price = Integer.parseInt(request.getParameter("price"));
    int ProductQuantity = Integer.parseInt(request.getParameter("quantity"));
    
    PrintWriter out = response.getWriter();
    out.println("Added Product....");
    
    addproduct b = new addproduct();
    b.insertproduct(ProductName,Price,ProductQuantity,ProductDescription,ProductImage);
}
}