<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My Profile</title>
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/myProfile.css" />
</head>
<body onload="loadUserData()">
<%
    String sessionId = session.getId();
%>
<div class="container">
    <div class="N1"></div>
    <div class="N2">
        <div class="N3"></div>
        <span class="N4">Logo</span>
        <span class="N5">Nav Bar</span>
    </div>

    <span class="pageLink">Homepage/ My Account</span>
    <div class="helloName">
        <img class="pPic" src="images/images.jpg" alt="Upload your Profile Picture" />
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

            <!-- Other sidebar content -->

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
                    <input type="text" name="FirstName" class="nameInput" required />
                    <span class="lName"> Last Name</span>
                    <input type="text" name="LastName" class="nameInput1" required />
                </div>

                <div class="DoB_Address">
                    <span class="DoB">Date of Birth</span>
                    <input type="date" name="DoB" class="dateInput" required />
                    <span class="address">Address</span>
                    <input type="text" name="Address" class="addressInput" required />
                </div>

                <!-- Other form inputs -->

                <input type="hidden" name="sessionId" value="<%= sessionId %>">
                <input type="submit" value="Save Changes" class="Save" />
            </form>
        </div>
    </div>

    <div class="footerBackGround"></div>
    <span class="footerContent">Footer Section</span>
</div>

<script>
    function loadUserData() {
        // Retrieve user data passed from the servlet
        var userData = <%= request.getAttribute("userData") %>;
        // Populate form fields with user data
        document.getElementsByName("FirstName")[0].value = userData.firstName;
        document.getElementsByName("LastName")[0].value = userData.lastName;
        document.getElementsByName("Address")[0].value = userData.address;
        document.getElementsByName("DoB")[0].value = userData.dateOfBirth;
        document.getElementById("male").checked = userData.gender === "male";
        document.getElementById("female").checked = userData.gender === "female";
        document.getElementsByName("Number")[0].value = userData.mobileNumber;
        document.getElementsByName("Email")[0].value = userData.email;
    }
</script>

<script src="js/myProfile.js"></script>
</body>
</html>
