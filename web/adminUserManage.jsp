<%-- 
    Document   : adminUsersManage
    Created on : May 1, 2024, 4:08:49 PM
    Author     : MSI
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
        <title>Product</title>
        <link rel="stylesheet" href="css/productview.css">
        
    </head>
    <body>
        
        <h1>Manage Users</h1>
        
    <div class="product-display">
      <table class="product-display-table">
         <thead>
         <tr>
            <th>User ID</th>
            <th>Mobile</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Address</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Action</th>
         </tr>
         </thead>
         
         <%
                String url = "jdbc:mysql://localhost:3306/ecommerce";
                String query = "SELECT * FROM users";
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()) { %>
                
                <tr>
                   <td><%=rs.getInt("UserID")%></td>
                    <td><%=rs.getString("Mobile")%></td>
                    <td><%=rs.getString("Gender")%></td>
                    <td><%=rs.getString("Email")%></td>
                    <td><%=rs.getString("Address")%></td>
                    <td><%=rs.getString("FirstName")%></td>
                    <td><%=rs.getString("LastName")%></td>
                    
                    <td>
                        <form action="manageUsers" method="post">
                        <input type="hidden" name="UserID" value="<%=rs.getInt("UserID")%>">
                        <input type="submit" class="btn" value="Delete">
                        </form>

                    </td>
                </tr>
                
                <% } %>
         
      </table>
    </div>
    
  </body>
</html>
