<%-- 
    Document   : sidebar
    Created on : May 4, 2024, 9:40:09 PM
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
        <link rel="stylesheet" href="css/adminHome.css" />
    </head>
    <body>
        <div class="sidebar">
        <div class="sidebar-group">
          <div>
            <img src="icons/view-dashboard.svg" />
            <div class="logo-text">Dashboard</div>
          </div>
        </div>
        <div class="sidebar-group">
          <div>
            <div><a href="adminHome.jsp">
              <img src="icons/home.svg" /></a>
            </div>
              <div><a href="adminHome.jsp">Home (<% 
                    String url = "jdbc:mysql://localhost:3306/ecommerce";
                    String query = "SELECT (SELECT COUNT(*) FROM products) AS totalProducts, (SELECT COUNT(*) FROM users) AS totalUsers, (SELECT COUNT(*) FROM orders) AS TotalOrders";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(url, "root", "");
                    Statement st = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                    ResultSet rs = st.executeQuery(query);
    
                    while(rs.next()) { %>
                       <%= rs.getString("totalProducts") %> 
                    <% } %>)</a></div>
          </div>
          <div>
            <div><a href="users.jsp">
              <img src="icons/card-account-details-outline.svg" /></a>
            </div>
              <div><a href="users.jsp">User Profile
                      (<% 
                    rs.beforeFirst();
                  while(rs.next()) { %>
                       <%= rs.getString("totalUsers") %> 
                    <% } %>)
                  </a></div>
          </div>
          <div>
            <div><a href="massages.jsp">
                    <img src="icons/message-reply.svg" /></a>
            </div>
              <div><a href="massages.jsp">Messages</a></div>
          </div>
          <div>
            <div><a href="orders.jsp">
                    <img src="icons/clock-time-three.svg" /></a>
            </div>
            <div><a href="orders.jsp">Orders
                (<% 
                    rs.beforeFirst();
                  while(rs.next()) { %>
                       <%= rs.getString("TotalOrders") %> 
                    <% } %>)
                
                </a></div>
          </div>        
        </div>
        <div class="sidebar-group">
          <div>
            <div><a href="adminprofile.jsp">
              <img src="icons/cog.svg" /></a>
            </div>
            <div><a href="adminprofile.jsp">Settings</a></div>
          </div>
          <div>
            <div>
              <img src="icons/shield-check.svg" />
            </div>
            <div>Log Out</div>
          </div>           
        </div>
      </div>
    </body>
</html>
