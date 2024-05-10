<%-- 
    Document   : adminUsersManage
    Created on : May 1, 2024, 4:08:49 PM
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
        <link rel="stylesheet" href="css/productview.css">
        
    </head>
    <body>
        
        <h1>Manage Users</h1>
        
    <div class="product-display">
      <table class="product-display-table">
         <thead>
         <tr>
                    <th>Order ID</th>
                    <th>Client ID</th>
                    <th>Product ID</th>
                    <th>Action</th>
         </tr>
         </thead>
         
         <%
                String url = "jdbc:mysql://localhost:3306/ecommerce";
                String query = "SELECT * FROM orders";
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()) { %>
                
                <tr>
                    <td><%= rs.getInt("OrderID") %></td>
                    <td><%= rs.getString("ClientID") %></td>
                    <td><%= rs.getString("ProductID") %></td>
                    <td>
                        <form action="orderManage" method="post">
                            <input type="hidden" name="OrderID" value="<%= rs.getInt("OrderID") %>">
                            <input type="hidden" name="ClientID" value="<%= rs.getInt("ClientID") %>">
                            <input type="hidden" name="ProductID" value="<%= rs.getInt("ProductID") %>">
                            <input type="submit" class="btn" value="Delete">
                        </form>
                </tr>
                
                <% } %>
         
      </table>
    </div>
    
  </body>
</html>
