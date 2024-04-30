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
               <style>
            .cart-page{
    margin: 80px auto;
}
table{
    width: 100%;
    border-collapse: collapse;
}
.cart_info{

display: flex;
flex-wrap: wrap;
}
  

th{
    text-align:left; 
    padding: 5px;
    color: #fff;
    background: #ff523b;
    font-weight: normal;  

}
td{
    padding: 10px 5px;
}

td input{
    width: 40px;
    height: 30px;
    padding: 5px;  
}

td a{
    color: green ;
    font-size:12px ;
}

.total_price{
    display: flex;
    justify-content: flex-end;
}
.total_price table{
    border-top: 3px solid #ff523b;
    width: 100%;
    max-width: 700px; 

}
td:last-child{
    text-align: right;
}

th:last-child{
    text-align: right;
    
}
.bar{
    background: grey;
    border: none;
    width: 200px;
    height: 30px;  
    
} 
.bar p{
    text-align: center;
    
}       
        </style>
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
