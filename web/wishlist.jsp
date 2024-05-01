<%-- 
    Document   : wishlist
    Created on : May 1, 2024, 8:03:36 PM
    Author     : Chathushka
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<!doctype html>
<html class="no-js" lang="">
        <%
 
    if (session == null || session.getAttribute("userId") == null) {
        // Redirect to login page if session is not created or if userId attribute is not set
        response.sendRedirect("login.jsp");
    }
%>
      
    <jsp:include page="header.jsp" />
    <body>
     <jsp:include page="navbar.jsp" />
     <jsp:include page="connection.jsp" />
		<div class="pages-title section-padding">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="pages-title-text text-center">
							<h2>My Cart</h2>
							<ul class="text-left">
								<li><a href="index.jsp.html">Home </a></li>
								<li><span> // </span>Cart</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	    <section class="pages wishlist-page section-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="table-responsive padding60">
                        <table class="wishlist-table text-center">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% 
                                    try {
                                        // Retrieve client ID from session and cast to int
                                        Integer clientIdObj = (Integer) session.getAttribute("userId");
                                        int clientId = clientIdObj != null ? clientIdObj.intValue() : 0;

                                        // Perform database operations to fetch wishlist items
                                        Connection connection = null;
                                        PreparedStatement preparedStatement = null;
                                        ResultSet resultSet = null;

                                        // Establish database connection
                                        Class.forName("com.mysql.jdbc.Driver");
                                        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");

                                        // Prepare and execute SQL query
                                         String query = "SELECT w.ID, p.ProductName, p.Price FROM wishlist w JOIN products p ON w.ProductID = p.ProductID WHERE w.ClientID = ?";
                                        preparedStatement = connection.prepareStatement(query);
                                        preparedStatement.setInt(1, clientId);

                                        // Execute the query
                                        resultSet = preparedStatement.executeQuery();

                                        // Iterate through the result set and populate the table rows
                                        while (resultSet.next()) {
                                              int wishlistId = resultSet.getInt("ID");
                                            String productName = resultSet.getString("ProductName");
                                            String price = resultSet.getString("Price");
                                %>
                                <tr>
                                    <td class="td-img text-left">
                                        <a href="#"><img src="img/cart/3.png" alt="Add Product" /></a>
                                        <div class="items-dsc">
                                            <h5><a href="#"><%= productName %></a></h5>
                                        </div>
                                    </td>
                                    <td><%= price %></td>
                                  <td>
                                        <form action="removeItemFromWishlist.jsp" method="post">
                                            <input type="hidden" name="wishlistId" value="<%= wishlistId %>">
                                            <button type="submit" class="remove-btn">Remove</button>
                                        </form>
                                    </td>
                                </tr>
                                <% 
                                        }
                                        // Close database connections
                                        resultSet.close();
                                        preparedStatement.close();
                                        connection.close();
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>
                            </tbody>
                        </table>
                            <div class="submit-text coupon">
										<button type="submit">CheckOut </button>
									</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<jsp:include page="footer.jsp" />
<jsp:include page="scripts.jsp" />
    </body>
</html>
