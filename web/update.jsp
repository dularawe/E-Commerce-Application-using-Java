<%-- 
    Document   : update
    Created on : Apr 27, 2024, 12:10:05 AM
    Author     : MSI
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Item</title>
        <script>
        function openEditPopup(ProductID, ProductImage, ProductName, ProductDescription, Price, ProductQuantity) {
    document.getElementById('editProductID').value = ProductID;
    document.getElementById('editProductName').value = ProductName;
    document.getElementById('editProductDescription').value = ProductDescription;
    document.getElementById('editPrice').value = Price;
    document.getElementById('editProductQuantity').value = ProductQuantity;
    document.getElementById('editPopup').style.display = 'block';
}



        function closeEditPopup() {
            document.getElementById('editPopup').style.display = 'none';
        }
    </script>
    <link rel="stylesheet" href="css/update1.css">
    <link rel="stylesheet" href="css/update2.css">
    </head>
    <body>
    <div class="container">
        <h1> Update Section</h1>
        <a href="viewproduct.jsp"><input type="submit" value="Back" class="btn"></a>
    <div class="product-display">
      <table class="product-display-table">
         <thead>
         <tr>
            <th>Product ID</th>
            <th>Product Image</th>
            <th>Product Name</th>
            <th>Product Description</th>
            <th>Price</th>
            <th>Product Quantity</th>
            <th>Action</th>
         </tr>
         </thead>
         
         <% 
            String url = "jdbc:mysql://localhost:3306/ecommerce";
            String query = "SELECT * FROM products";

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);

            while(rs.next()) { %>

            <tr>
                <td><%=rs.getInt("ProductID")%></td>
                <td><img src="images/<%=rs.getString("ProductImage")%>" alt="Product Image"style="width:100px;height:100px"></td>
                <td><%=rs.getString("ProductName")%></td>
                <td><%=rs.getString("ProductDescription")%></td>
                <td><%=rs.getInt("Price")%></td>
                <td><%=rs.getInt("ProductQuantity")%></td>
                <td>
                    <button onclick="openEditPopup('<%=rs.getInt("ProductID")%>', '<%=rs.getString("ProductImage")%>', '<%=rs.getString("ProductName")%>', '<%=rs.getString("ProductDescription")%>', '<%=rs.getInt("Price")%>', '<%=rs.getInt("ProductQuantity")%>')">Update</button>
                </td>
            </tr>

            <% } %>
      </table>
      
    </div>
    </div>
      <div id="editPopup" class="editPopup-content">
        <span class="close" onclick="closeEditPopup()">&times;</span>
        <h2>Edit Product Details</h2>
        <form action="newupdate" method="post"enctype="multipart/form-data">
            <input type="hidden" id="editProductID" name="id">
            <label for="editProductName">Name:</label>
            <input type="text" id="editProductName" name="name"><br><br>
            <label for="editProductDescription">Description:</label>
            <input type="text" id="editProductDescription" name="description"><br><br>
            <label for="editPrice">Price:</label>
            <input type="text" id="editPrice" name="price"><br><br>
            <label for="editProductQuantity">Quantity:</label>
            <input type="text" id="editProductQuantity" name="ProductQuantity"><br><br>
            <label for="editProductImage">Image:</label>
            <input type="file" id="editProductImage" name="picture"><br><br>
            <input name="btn" type="submit" value="Update">
        </form>
    </div>
  </body>
</html>