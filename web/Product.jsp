<%-- 
    Document   : Product
    Created on : Apr 30, 2024, 10:50:11 PM
    Author     : LENOVO
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
        <title>Products</title>
        <link rel="stylesheet" href="css/product.css">
    </head>
    <body>
        <%
            String url = "jdbc:mysql://localhost:3306/ecommerce";
            String query = "SELECT * FROM products";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            
            while(rs.next()) { 
        %>
        <div class="product-container">
    <% 
    while(rs.next()) { 
    %>
    <div class="product-card">
        <div class="product-image">
            <img src="images/<%=rs.getString("ProductImage")%>" alt="Product Image">
        </div>
        <div class="product-details">
            <h2><%= rs.getString("ProductName") %></h2>
            <p class="description"><%= rs.getString("ProductDescription") %></p>
            <p class="price">$<%= rs.getString("Price") %></p>
            <div class="action">
                <a href="cart.jsp" class="add-to-cart">Add to Cart</a>
            </div>
        </div>
    </div>
    <% 
    } // end while
    %>
</div>
        <% } %>
    </body>
</html>
