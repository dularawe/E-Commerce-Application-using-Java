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
                <li><a href="orderManage.jsp">Order List</a></li>
                <li><a href="shippingManage.jsp">Shipping List</a></li>
                <!-- Add links to other pages as needed -->
            </ul>
        </nav>
    </header>
    <main>
        <h2>Order List</h2>
        <table border = "1">
            
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Customer Name</th>
                    <th>Order Date</th>
                    <th>Total Amount</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <!-- Populate this section dynamically with orders -->
                <tr>
                    <td>1</td>
                    <td>John Doe</td>
                    <td>2024-04-28</td>
                    <td>$100.00</td>
                    <td>Processing</td>
                    <td><a href="orderdetails.jsp?id=1">View Details</a></td>
                </tr>
                <!-- Repeat this structure for each order -->
            </tbody>
        </table>
    </main>
    <footer>
        <!-- Footer content goes here -->
    </footer>
</body>
</html>
