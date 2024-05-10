<%-- 
    Document   : addproduct
    Created on : May 5, 2024, 11:06:37 PM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
        <link rel="stylesheet" href="css/adminHome.css">
        <link rel="stylesheet" href="css/addproduct.css">
        
    </head>
    <body>
       <div class="container">
      <div class="header">
        <div class="header-top">
          <div class="profile"></div>
        </div>
        <div class="header-bottom">
          <div>
            <img src="icons/person3.svg" />
            <div>
              <div>Hi there,</div>
              <div class="greeting">Date and time
              </div>
            </div>
          </div>
          <div class="header-buttons">
              <div class="header-button"><a href="addproduct.jsp">New</a></div>
              <div class="header-button"><a href="update.jsp">Update</a></div>
            <div><div></div></div>
          </div>
        </div>
      </div>
      <jsp:include page="sidebar.jsp" />
      <div class="content">
        <div class="projects">  
            <form action="product" method="POST" enctype="multipart/form-data">
            <table>
                <tr>
                    <td>
                        <label for="name"> Product Name</label>
                        <input type="text" id="ProductName" name="ProductName" placeholder="ProductName" />
                    </td>
                    <td>
                        <label for="description"> Description</label>
                        <input type="text" id="description" name="description" placeholder="Description" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="Price">Price</label>
                        <input type="number" id="price" name="price" placeholder="Price" />
                    </td>
                    <td>
                        <label for="quantity">Quantity</label>
                        <input type="number" id="quantity" name="quantity" placeholder="Quantity" />
                    </td>
                </tr>
            </table>
            
            <div class="Add">
                <div class="card">
                    <img src="images/profile.png" id="profile-pic" />
                    <label for="input-file" class="upload-label">Upload Image</label>
                    <input type="file" accept="image/jpeg,image/png,image/jpg" id="input-file" name="ProductImage"/>
                </div>
                <div class="column"></div>
            </div>
            <div class="row">
                <div class="c">
                    <a href="viewproduct.jsp">
                        <input type="button" value="Back" class="btn">
                    </a>
                    <input type="reset" value="Reset" class="btn" />
                    <input type="submit" value="Submit" class="btn" />
                </div>
            </div>
        </form>
    </div>
    <script>
        let profilePic = document.getElementById("profile-pic");
        let inputFile = document.getElementById("input-file");

        inputFile.onchange = function () {
            profilePic.src = URL.createObjectURL(inputFile.files[0]);
        };
    </script>
        </div>
        </div>
    </body>
</html>
