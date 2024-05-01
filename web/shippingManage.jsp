<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try {
        String url = "jdbc:mysql://localhost:3306/ecommerce";
        String query = "SELECT * FROM wishlist";
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
    <title>Shipping List</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header>
        <h1>Shipping Management</h1>
        <nav>
            <ul>
                <li><a href="order Manage.jsp">Order List</a></li>
                <li><a href="shippingManage.jsp">Shipping List</a></li>
                <li><a href="adminHome.jsp">Home</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Shipping List</h2>
        <table border="1">
            <thead>
                <tr>
                    <th> ID</th>
                    <th>Client ID</th>
                    <th>Order ID</th>
                    <th>Total Amount</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% while(rs.next()) { %>
                <tr>
                    <td><%= rs.getInt("ID") %></td>
                    <td><%= rs.getString("ClientID") %></td>
                    <td><%= rs.getString("OrderID") %></td>
                    <td><%= rs.getDouble("TotalAmount") %></td>
                    <td>
                        <form action="deleteWishlistItem.jsp" method="post">
                            <input type="hidden" name="OrderID" value="<%= rs.getInt("OrderID") %>">
                            <input type="submit" class="btn" value="Delete">
                        </form>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </main>
    <footer>
     
    </footer>
</body>
</html>

<%
    } catch (Exception e) {
        // Handle exceptions
        e.printStackTrace();
    } finally {
        // Close resources
        try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        try { if (st != null) st.close(); } catch (SQLException e) { e.printStackTrace(); }
        try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
