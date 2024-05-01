<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try {
        String url = "jdbc:mysql://localhost:3306/ecommerce";
        String query = "SELECT * FROM orders";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, "root", "");
        st = con.createStatement();
        rs = st.executeQuery(query);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order List</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header>
        <h1>Order Management</h1>
        <nav>
            <ul>
                <li><a href="order Manage.jsp">Order List</a></li>
                <li><a href="shippingManage.jsp">Shipping List</a></li>
                <!-- Add links to other pages as needed -->
            </ul>
        </nav>
    </header>
    <main>
        <h2>Order List</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Client ID</th>
                    <th>Product ID</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% while(rs.next()) { %>
                <tr>
                    <td><%= rs.getInt("OrderID") %></td>
                    <td><%= rs.getString("ClientID") %></td>
                    <td><%= rs.getString("ProductID") %></td>
                    <td>
                        <form action="#" method="post">
                            <input type="hidden" name="ProductID" value="<%= rs.getInt("ProductID") %>">
                            <input type="hidden" name="ClientID" value="<%= rs.getInt("ClientID") %>">
                            <input type="hidden" name="OrderID" value="<%= rs.getInt("OrderID") %>">
                            <input type="submit" class="btn" value="Delete">
                        </form>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </main>
</body>
</html>

<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close resources
        try { if (rs != null) rs.close(); } catch (SQLException e) { /* Ignored */ }
        try { if (st != null) st.close(); } catch (SQLException e) { /* Ignored */ }
        try { if (con != null) con.close(); } catch (SQLException e) { /* Ignored */ }
    }
%>