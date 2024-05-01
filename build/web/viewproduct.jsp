<%-- 
    Document   : view product
    Created on : Apr 24, 2024, 12:19:47 AM
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
        <title>Product</title>
        <link rel="stylesheet" href="css/view.css">
    </head>
    <body>
        <div class="container"><br>
        <h1>Product</h1>
        <a href="addproduct.jsp"><input type="submit" value="Add" class="sbtn"></a>
        <a href="update.jsp"><input type="submit" value="Update" class="sbtn">
    <div class="product-display">
      <table class="product-display-table">
         <thead>
         <tr>
            <th>ID</th>
            <th>Image</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Amount</th>
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
                    <td><%=rs.getString("Price")%></td>
                    <td><%=rs.getInt("ProductQuantity")%></td>
                    <td>
                        <form action="DeleteProduct" method="post">
    <input type="hidden" name="ProductID" value="<%=rs.getInt("ProductID")%>">
    <input type="submit" class="btn" value="Delete">
</form>
                    </td>
                </tr>
                
                <% }  %>
         
      </table>
    </div>
    </div>
  </body>
</html>
