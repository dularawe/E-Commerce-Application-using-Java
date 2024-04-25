<%-- Document : myProfile Created on : Apr 25, 2024, 2:25:49 PM Author : HP --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My Profile</title>
    <link
      href="https://fonts.googleapis.com/css?family=Inter&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="css/myProfile.css" />
  </head>
  <body>
    <div class="container">
      <div class="N1"></div>
      <div class="N2">
        <div class="N3"></div>
        <span class="N4">Logo</span>
        <span class="N5">Nav Bar</span>
      </div>

      <span class="pageLink">Homepage/ My Account</span>
      <div class="helloName">
        <img
          class="pPic"
          src="images/images.jpg"
          alt="Upload your Profile Picture"
        />
        <div class="pName">
          <h3 class="helloH3">Hello</h3>
          <span class="nameSpan">Sandun Dinesh</span>
        </div>
      </div>

      <div class="sideBar">
        <div class="sideBarContent">
          <div class="content1">
            <div class="sideBarDot"></div>
            <span class="myDetails" href="">My Details</span>
          </div>

          <div class="content2">
            <div class="sideBarDot"></div>
            <span class="myOrders" href="">My Orders</span>
          </div>

          <div class="content3">
            <div class="sideBarDot"></div>
            <span class="wishList" href="">Wishlist</span>
          </div>

          <div class="content4">
            <div class="sideBarDot"></div>
            <span class="deliveryDetails" href="">Delivery Details</span>
          </div>

          <div class="content5">
            <div class="sideBarDot"></div>
            <span class="changePassword" href="">Change Password</span>
          </div>

          <div class="content6">
            <div class="sideBarDot"></div>
            <span class="payment" href="">Payment</span>
          </div>

          <div class="content7">
            <div class="sideBarDot"></div>
            <span class="Logout" href="">Logout</span>
          </div>
        </div>
      </div>

      <div class="perInfo">
        <div class="perInfoHead">
          <span class="perInfoTitle">Personal Information</span>
          <div class="empty"></div>
        </div>

        <div class="perInfoContent">
            <form action="myProfile" method="POST">
            <img src="images/images.jpg" alt="" class="pImage" />

            <div class="Name_Input">
              <span class="fName"> First Name</span>
              <input type="text" class="nameInput" required />
              <span class="lName"> Last Name</span>
              <input type="text" class="nameInput1" required />
            </div>

            <div class="DoB_Address">
              <span class="DoB">Date of Birth</span>
              <input type="date" class="dateInput" required />
              <span class="address">Address</span>
              <input type="text" class="addressInput" required />
            </div>

            <div class="gender">
              <span class="genderTitle">Gender</span>
              <form class="form2">
                <input type="radio" id="male" name="gender" value="male" />
                <label for="male">Male</label>
                <input type="radio" id="female" name="gender" value="female" />
                <label for="female">Female</label><br />
              </form>
            </div>

            <div class="pNum">
              <span class="pNumInput">Phone Number</span>
              <input type="number" class="numInput" required />
            </div>

            <div class="Email_Cancel_Save">
              <span class="emailTitle">Email</span>
              <input type="email" class="emailInput" required />
              <input
                type="reset"
                value="Cancel"
                class="Cancel"
                onclick="clearFields()"
              />
              <input type="submit" value="Save Changes" class="Save" />
            </div>
          </form>
        </div>
      </div>

      <div class="footerBackGround"></div>
      <span class="footerContent">Footer Section</span>
    </div>
    <script src="js/myProfile.js"></script>
  </body>
</html>
