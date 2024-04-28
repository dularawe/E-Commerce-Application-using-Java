<%-- 
    Document   : cart
    Created on : Apr 23, 2024, 4:27:53 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="small_container cart-page">
            <table>
                <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
                </tr>
                <tr>
                    <td>
                       <div class="cart_info">
                        <img src="image.jpeg" >
                        <div>
                            <p>Red Printed Tshirt</p>
                            <small> Price: $50.00</small>
                            <br>
                            <a href="">Remove</a>
                        </div>
                       </div> 

                    </td>
                    <td><input type="number" name="quan"></td>
                    <td>$50</td>
                </tr>
                <tr>
                    <td>
                       <div class="cart_info">
                        <img src="image.jpeg" >
                        <div>
                            <p>Red Printed Tshirt</p>
                            <small> Price: $50.00</small>
                            <br>
                            <a href="">Remove</a>
                        </div>
                       </div> 

                    </td>
                    <td><input type="number" name="quan"></td>
                    <td>$50</td>
                </tr>
                <tr>
                    <td>
                       <div class="cart_info">
                        <img src="image.jpeg" >
                        <div>
                            <p>Red Printed Tshirt</p>
                            <small> Price: $50.00</small>
                            <br>
                            <a href="">Remove</a>
                        </div>
                       </div> 

                    </td>
                    <td><input type="number" value="1"></td>
                    <td>$50</td>
                </tr>
            </table>

            <div class="total_price">
                <table>
                    <tr>
                        <td>Subtotal</td>
                        <td>$150.00</td>
                    </tr>
                    <tr>
                        <td>Shipping</td>
                        <td>$50.00</td>
                    </tr>
                    <tr>
                        <td>Total</td>
                        <td>$200.00</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="bar">
                                Proceed To Checkout

                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </body>
</html>
