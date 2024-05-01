<%-- 
    Document   : Product
    Created on : Apr 30, 2024, 10:50:11 PM
    Author     : LENOVO
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
        <title>Products</title>
        <link rel="stylesheet" href="css/product.css">
    </head>
    <body>
        <!--navbar-->
            
            <div class="topnav" id="myTopnav">
  <!--<a href="#home" class="active">Home</a>-->
  
  <div class="dropdown">
    <button class="dropbtn">USD 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">LKR</a>
      <a href="#">AUD</a>
      <a href="#">CAD</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">EN
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">SI</a>
      <a href="#">TA</a>
      <a href="#">HI</a>
    </div>
  </div> 
  <a href="#WishList">WishList</a>
  <a href="#My Account">My Account</a>
  <a style="float: left;">Call Us  <span style="color:red;">075-0224919</span></a>
  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
</div>



<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}

</script>

<hr>


        
        
        
        
        
        
        <h1> Flash Sale</h1>
        <%
            String url = "jdbc:mysql://localhost:3306/ecommerce";
            String query = "SELECT * FROM products";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            
            while(rs.next()) { 
        %>
        <div class="product-container">
    <% 
    while(rs.next()) { 
    %>
    <div class="product-card">
        <div class="product-image">
            <img src="images/<%=rs.getString("ProductImage")%>" alt="Product Image">
        </div>
        <div class="product-details">
            <h2><%= rs.getString("ProductName") %></h2>
            <p class="description"><%= rs.getString("ProductDescription") %></p>
            <p class="price">$<%= rs.getString("Price") %></p>
            <div class="action">
                <a href="cart.jsp" class="add-to-cart">Add to Cart</a>
            </div>
        </div>
    </div>
            
            
    <% 
    } // end while
    %>
</div>
        <% } %>
        
        
    </body>
</html>
