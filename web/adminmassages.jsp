<%-- 
    Document   : view product
    Created on : Apr 24, 2024, 12:19:47 AM
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
        <title>Massages</title>
        <link rel="stylesheet" href="css/productview.css">
    </head>
    <body>
        
        <h1>Product</h1>
    <div class="product-display">
      <table class="product-display-table">
         <thead>
         <tr>
            <th>ID</th>
            <th>Massage</th>
            <th>Action</th>
         </tr>
         </thead>
         
         <%
                String url = "jdbc:mysql://localhost:3306/ecommerce";
                String query = "SELECT * FROM massages";
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()) { %>
                
                <tr>
                   <td><%=rs.getInt("ID")%></td>
                    <td><%=rs.getInt("Massage")%></td>
                    <td> 
                        <form action="Deletemassage" method="post">
    <input type="hidden" name="ID" value="<%=rs.getInt("ID")%>">
    <input type="submit" class="btn" value="Delete">
</form>

                    </td>
                </tr>
                
                <% } %>
         
      </table>
    </div>
    
  </body>
</html>
