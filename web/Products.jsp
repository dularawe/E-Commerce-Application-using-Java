<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/products.css">
         
        <title>Products</title>
    
    
<style>


</style>
    </head>
    
    <%
       String msg=request.getParameter("msg");
       if("added".equals(msg))
       {
       %>
        <h3 class="alert">Product added successsfully!</h3>
        </%>} %>
    <%
       if("exist".equals(msg))
       {
       %>
        <h3 class="alert">Product already exist in your cart! Quantity increased!</h3>
        <%} %>
            <%
               if("invalid".equals(msg))
               {
               %>
                <h3 class="alert">Some thing went wrong! Try Again!</h3>
                <%} %>
                
    
    <body>
        <form action="ProductsServlet" method="POST">
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


<!--<div class="row">
  <div class="column left" style="background-color:#aaa;">
      <img src="megastore.jpg" alt="megastore" width="500" height="600">
    <h2>Column 1</h2>
    <p>Some text..</p>
  </div>
    
    serch bar
    
  <div class="column middle" style="background-color:#bbb;">
    
    
  <input type="text" placeholder="Search.." name="search">
  <button type="submit"><i class="fa fa-search"></i></button>



    
  </div>
    
    
    
  <div class="column right" style="background-color:#ccc;">
    <h2>Column 3</h2>
    <p>Some text..</p>
  </div>
</div>
        </form>-->
<br>
<br>

<hr>


                
  <!--cards-->
  
    <div class="c_row">
  <div class="c_column">
   
      
      

<div class="card">
  <img src="water.jpg" alt="water" style="width:100%">
  <h1>Water Bottle</h1>
  <p class="price">$1.99</p>
  <p>Quality water bottles</p>
  <p><button>Add to Cart</button></p>
</div>

  </div>

  <div class="c_column">
   
      
     

<div class="card">
  <img src="water.jpg" alt="water" style="width:100%">
  <h1>Water Bottle</h1>
  <p class="price">$1.99</p>
  <p>Quality water bottles</p>
  <p><button>Add to Cart</button></p>
</div>

  </div>
    
  <div class="c_column">
   
      
      

<div class="card">
  <img src="water.jpg" alt="water" style="width:100%">
  <h1>Water Bottle</h1>
  <p class="price">$1.99</p>
  <p>Quality water bottles</p>
  <p><button>Add to Cart</button></p>
</div>

  </div>

  <div class="c_column">
   
      
      

<div class="card">
  <img src="water.jpg" alt="water" style="width:100%">
  <h1>Water Bottle</h1>
  <p class="price">$1.99</p>
  <p>Quality water bottles</p>
  <p><button>Add to Cart</button></p>
</div>

  </div>
   

<!--second row-->

  <div class="c_column">
   
      
      

<div class="card">
  <img src="water.jpg" alt="water" style="width:100%">
  <h1>Water Bottle</h1>
  <p class="price">$1.99</p>
  <p>Quality water bottles</p>
  <p><button>Add to Cart</button></p>
</div>

  </div>

  <div class="c_column">
   
      
     

<div class="card">
  <img src="water.jpg" alt="water" style="width:100%">
  <h1>Water Bottle</h1>
  <p class="price">$1.99</p>
  <p>Quality water bottles</p>
  <p><button>Add to Cart</button></p>
</div>

  </div>
    
  <div class="c_column">
   
      

<div class="card">
  <img src="water.jpg" alt="water" style="width:100%">
  <h1>Water Bottle</h1>
  <p class="price">$1.99</p>
  <p>Quality water bottles</p>
  <p><button>Add to Cart</button></p>
</div>

  </div>

  <div class="c_column">
   
      
      

<div class="card">
  <img src="water.jpg" alt="water" style="width:100%">
  <h1>Water Bottle</h1>
  <p class="price">$1.99</p>
  <p>Quality water bottles</p>
  <p><button>Add to Cart</button></p>
</div>

  </div>

<div class="c_column">
   
      
      

<div class="card">
  <img src="water.jpg" alt="water" style="width:100%">
  <h1>Water Bottle</h1>
  <p class="price">$1.99</p>
  <p>Quality water bottles</p>
  <p><button>Add to Cart</button></p>
</div>

  </div>

   


   </div>
  
 
   
</form>

        </form>
       
        <button type="submit" name="ok" value=""></button>
    </body>
</html>


