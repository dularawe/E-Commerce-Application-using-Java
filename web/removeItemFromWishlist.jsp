<%-- 
    Document   : removeItemFromWishlist
    Created on : May 1, 2024, 8:54:32 PM
    Author     : Chathushka
--%>


<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Remove Item From Wishlist</title>
</head>
<body>
    <% 
        try {
            // Retrieve the WishlistID parameter from the request
            int wishlistId = Integer.parseInt(request.getParameter("wishlistId"));
            
            // Establish database connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
            
            // Prepare SQL statement to delete the item from the wishlist table
            String query = "DELETE FROM wishlist WHERE ID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, wishlistId);
            
            // Execute the delete statement
            int rowsDeleted = preparedStatement.executeUpdate();
            
            // Close the database resources
            preparedStatement.close();
            connection.close();
            
            // Redirect back to the wishlist page after item removal
            response.sendRedirect("wishlist.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
