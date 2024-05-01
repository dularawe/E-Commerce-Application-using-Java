<%-- 
    Document   : adminHome
    Created on : May 1, 2024, 8:19:12 PM
    Author     : MSI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/adminHome.css" />
  </head>
  <body>
    <div class="container">
      <div class="header">
        <div class="header-bottom">
          <div>
            <img src="images/profile.png" />
            <div>
              <div>Hi there,</div>
              <div class="greeting">Have A Nice Day</div>
            </div>
          </div>
          <div class="header-buttons">
            <div class="header-button"><a href="addproduct.jsp">Add Product</a></div>
            <div class="header-button"><a href="order Manage.jsp">Oder Manage</a></div>
            <div class="header-button"><a href="viewproduct.jsp">View Product</a></div>
            <div class="header-button"><a href="adminUsersManage.jsp">User Manage</a></div>
          </div>
        </div>
      </div>
      <div class="content">
        <div class="projects">
          <div class="projects-heading"></div>
          <div class="projects-inner">
            <div class="proj-card">
              <div>
                <div class="proj-title"><h3>Total Products</h3></div>
                <div class="proj-text">
                  <% 
                    String url = "jdbc:mysql://localhost:3306/ecommerce";
                    String query = "SELECT (SELECT COUNT(*) FROM products) AS totalProducts, (SELECT COUNT(*) FROM users) AS totalUsers, (SELECT COUNT(*) FROM orders) AS TotalOrders";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(url, "root", "");
                    Statement st = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                    ResultSet rs = st.executeQuery(query);
    
                    while(rs.next()) { %>
                       <h1><%= rs.getString("totalProducts") %></h1>
                    <% } %>

                </div>
              </div>
            </div>
            <div class="proj-card">
              <div>
                <div class="proj-title"><h3>Total Users</h3></div>
                <div class="proj-text">
                  <% 
                    rs.beforeFirst();
                    while(rs.next()) { %>
                      <h1><%= rs.getString("totalUsers") %></h1>
                  <% } %>
                </div>
              </div>
            </div>
            <div class="proj-card">
              <div>
                <div class="proj-title"><h3>Total Orders</h3></div>
                <div class="proj-text">
                    <% 
                    rs.beforeFirst();
                    while(rs.next()) { %>
                      <h1><%= rs.getString("TotalOrders") %></h1>
                  <% } %>  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
