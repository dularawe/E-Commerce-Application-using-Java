<%@page import="java.sql.*, java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="">
    <jsp:include page="header.jsp" />
    <body>
        <jsp:include page="navbar.jsp" />
        <jsp:include page="connection.jsp" />
        <!-- header section end -->
        <!-- pages-title-start -->
        <div class="pages-title section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="pages-title-text text-center">
                            <h2>Checkout</h2>
                            <ul class="text-left">
                                <li><a href="index.jsp.html">Home </a></li>
                                <li><span> // </span>Checkout</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- pages-title-end -->
        <!-- Checkout content section start -->
        <section class="pages checkout section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-input single-cart-form padding60">
                            <div class="log-title">
                                <h3><strong>Billing Details</strong></h3>
                            </div>
                            <div class="custom-input">
                                <form action="#">
                                    <input type="text" name="fullName" placeholder="Your name" />
                                    <input type="text" name="email" placeholder="Enter your here" />
                                    <input type="text" name="phone" placeholder="Phone here" />
                                    <input type="text" name="company" placeholder="Company name here..." />
                                    <!-- Add more input fields for billing details as needed -->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Our order section -->
        <section class="pages checkout section-padding">
            <div class="container">
                <div class="row margin-top">
                    <div class="col-md-6">
                        <div class="padding60">
                            <div class="log-title">
                                <h3><strong>Our Order</strong></h3>
                            </div>
                            <div class="cart-form-text pay-details table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <td>Total</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Fetch product data from database and populate here -->
                                        <% 
                                            Connection connection = null;
                                            PreparedStatement statement = null;
                                            ResultSet resultSet = null;
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");

                                                // Prepare and execute SQL query to get product details
                                                String query = "SELECT ClientID, ProductID FROM wishlist";
                                                statement = connection.prepareStatement(query);

                                                // Execute the query
                                                resultSet = statement.executeQuery();

                                                // Iterate through the result set and display product details
                                                while (resultSet.next()) {
                                        %>
                                        <tr>
                                            <th><%= resultSet.getString("ClientID") %></th>
                                            <td>$<%= resultSet.getDouble("ProductID") %></td>
                                        </tr>
                                        <% 
                                                }
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            } finally {
                                                // Close the database connection and resources
                                                try {
                                                    if (resultSet != null) resultSet.close();
                                                    if (statement != null) statement.close();
                                                    if (connection != null) connection.close();
                                                } catch (SQLException e) {
                                                    e.printStackTrace();
                                                }
                                            }
                                        %>
                                    </tbody>
                                </table>
                                <div class="submit-text">
                                    <a href="#">Place Order</a>
                                </div>
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
