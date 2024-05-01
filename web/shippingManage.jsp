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
                <li><a href="orderManage.jsp">Order List</a></li>
                <li><a href="shippingManage.jsp">Shipping List</a></li>
                
            </ul>
        </nav>
    </header>
    <main>
        <h2>Shipping List</h2>
        <table border = "1">
            
            <thead>
                <tr>
                    <th>Shipment ID</th>
                    <th>Customer Name</th>
                    <th>Order Date</th>
                    <th>Total Amount</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                
                <tr>
                    <td>1</td>
                    <td>John Doe</td>
                    <td>2024-04-28</td>
                    <td>$100.00</td>
                    <td>Processing</td>
                    <td><a href="viewdetails.jsp?id=1">View Details</a></td>
                </tr>
                
            </tbody>
        </table>
    </main>
    <footer>
     
    </footer>
</body>
</html>
