<%-- 
    Document   : checkout
    Created on : Apr 26, 2024, 12:07:59 PM
    Author     : Chathushka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <link rel="stylesheet" href="css/checkout.css">
</head>
<body>
    <div class="container">
        <h2>Checkout</h2>
        <form action="order_confirmation.php" method="post">
            <div class="checkout-items">
                <h3>Selected Items:</h3>
                <!-- Display selected items here -->
                <p>Item 1 - $10</p>
                <p>Item 2 - $15</p>
                <!-- Add more items dynamically or fetch from a database -->
            </div>
            <div class="shipping-info">
                <h3>Shipping Information:</h3>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                <label for="address">Address:</label>
                <textarea id="address" name="address" required></textarea>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="payment-info">
                <h3>Payment Information:</h3>
                <label for="card_number">Card Number:</label>
                <input type="text" id="card_number" name="card_number" required>
                <label for="expiry_date">Expiry Date:</label>
                <input type="text" id="expiry_date" name="expiry_date" required>
                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv" required>
            </div>
            <input type="submit" value="Place Order">
        </form>
    </div>
</body>
</html>

