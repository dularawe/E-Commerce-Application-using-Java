<%-- 
    Document   : Product
    Created on : Apr 30, 2024, 9:40:36 PM
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
        <div class="c_column">
            <div class="card">
                <p><%= rs.getString("ProductImage") %></p>
                <h1><%= rs.getString("ProductName") %></h1>
                <p><%= rs.getString("ProductDescription") %></p>
                <p class="price"><%= rs.getString("Price") %></p>
                <p><a href="addproduct.jsp"><button>Add to Cart</button></a></p>
            </div>
        </div>
        <% } %>
    </body>
</html>
