<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/addproduct.css">
    <title>Add Product</title>
</head>
<body>
    <div class="container">
        <h1>ADD NEW ITEM</h1>
        <p></p>
        <form action="product" method="POST" enctype="multipart/form-data">
            <table>
                <tr>
                    <td>
                        <label for="name">Product Name</label>
                        <input type="text" id="ProductName" name="ProductName" placeholder="ProductName" />
                    </td>
                    <td>
                        <label for="description">Description</label>
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
</body>
</html>
