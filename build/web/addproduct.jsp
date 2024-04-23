<%-- 
    Document   : addproduct
    Created on : Apr 23, 2024, 11:50:09 AM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/addproduct.css">
    <title>Add Product</title>
</head>
<body>
    
 <div class="first">
    <h1>Add product</h1>
    <h4>Add your product for your customers</h4>
    <form action="product" method="POST">
        <table>
            <tbody>
                <tr>
                    <td>
                        <div class="box">
                            <h3>Basic Information</h3>
                            <div class="box1">
                                <h4>Input product Name</h4>
                                <input type="text" name="ProductName">

                                <h4>Description</h4>
                                <input type="text" name="description" value=""  />
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <h3></h3>
                            <div class="box1">
                                <h4>Images</h4>
                                <input type="file" name="ProductImage">
                                
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="box1">
                                <h4>Price</h4>
                                <input type="number" name="price" />   
                            </div>
                            
                            <div class="box1">
                                <h4>Quantity</h4>
                                <input type="number" name="quantity"/>   
                            </div>
                        </div>
                    </td>
                    <td>
                         <div class="box">
                            <div class="box1">
                                <input type="submit" value="Submit" />
                            </div>
                            <div class="box1">
                                <input type="reset" value="Clear" />
                            </div>
                        </div>  
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
 </div>
</body>
</html>