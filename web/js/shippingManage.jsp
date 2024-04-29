<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shipping List</title>
    <link rel="stylesheet" href="css/styles.css">
</head>        <nav>

<body>
    <header>
        <h1>Shipping Management</h1>
            <ul>
                <li><a href="orderManage.jsp">Order List</a></li>
                <li><a href="shippingManage.jsp">Shipping List</a></li>
                <!-- Add links to other pages as needed -->
            </ul>
        </nav>
    </header>
    <main>
        <h2>Shipping List</h2>
        <table>
            <thead>
                <tr>
                    <th>Shipment ID</th>
                    <th>Order ID</th>
                    <th>Customer Name</th>
                    <th>Order Date</th>
                    <th>Total Amount</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    Connection con = null;
                    Statement st = null;
                    ResultSet rs = null;
                    
                    try {
                        // Load MySQL JDBC driver
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        
                        // Connect to the database
                        String url = "jdbc:mysql://localhost:3306/ordermanage";
                        String username = "your_username"; // Replace with your MySQL username
                        String password = "your_password"; // Replace with your MySQL password
                        con = DriverManager.getConnection(url, username, password);
                        
                        // Execute query
                        String query = "SELECT * FROM ordermanage";
                        st = con.createStatement();
                        rs = st.executeQuery(query);
                        
                        // Iterate through the result set and display data in table rows
                        while(rs.next()) {
                %>
                    <tr>
                        <td><%= rs.getInt("shipment_id") %></td>
                        <td><%= rs.getInt("order_id") %></td>
                        <td><%= rs.getString("customer_name") %></td>
                        <td><%= rs.getString("order_date") %></td>
                        <td><%= rs.getString("total_amount") %></td>
                        <td><%= rs.getString("status") %></td>
                        <td><%= rs.getString("action") %></td>
                    </tr>
                <% 
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        // Close resources
                        try {
                            if (rs != null) rs.close();
                            if (st != null) st.close();
                            if (con != null) con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                %>
            </tbody>
        </table>
    </main>
    <footer>
        <!-- Footer content goes here -->
    </footer>
</body>
</html>
