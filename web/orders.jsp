<%-- 
    Document   : adminHome
    Created on : May 4, 2024, 9:01:27 PM
    Author     : MSI
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Orders</title>
    <link rel="stylesheet" href="css/adminHome.css" />
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
            <jsp:include page="adminorders.jsp" />
        </div>
      </div>
      </div>
  </body>
</html>

