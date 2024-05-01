<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shipping Details</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header>
        <h1>Shipping Details</h1>
        <nav>
            <ul>
                <li><a href="orderManage.jsp">Order List</a></li>
                <li><a href="shippingManage.jsp">Shipping List</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Shipping Details</h2>
        <div>
            <c:if test="${empty param.id}">
                <p>No shipment ID specified.</p>
            </c:if>
            <c:if test="${not empty param.id}">
                <%
                    String shipmentId = request.getParameter("id");
                    // Here you would use Java code to retrieve shipping details from the database based on the shipment ID
                    // Replace the following dummy code with your actual database retrieval logic
                    String customerName = "John Doe"; // Replace with actual customer name from database
                    String orderDate = "2024-04-28"; // Replace with actual order date from database
                    double totalAmount = 100.00; // Replace with actual total amount from database
                    String status = "Processing"; // Replace with actual status from database
                %>
                <table>
                    <tr>
                        <th>Shipment ID</th>
                        <td><c:out value="${shipmentId}" /></td>
                    </tr>
                    <tr>
                        <th>Customer Name</th>
                        <td><c:out value="${customerName}" /></td>
                    </tr>
                    <tr>
                        <th>Order Date</th>
                        <td><c:out value="${orderDate}" /></td>
                    </tr>
                    <tr>
                        <th>Total Amount</th>
                        <td><c:out value="${totalAmount}" /></td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td><c:out value="${status}" /></td>
                    </tr>
                </table>
            </c:if>
        </div>
    </main>
    <footer>
        <!-- Footer content goes here -->
    </footer>
</body>
</html>
