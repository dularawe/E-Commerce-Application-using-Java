<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!--<%include file="Header.jsp"%></%include>
    <include file="footer.jsp"></include>-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
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
                



<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
            <%
               try{
               Connection con=ConnectionProvider.getCon();
               Statement st=con.createStatement();
               ResultSet rs=st.executeQuery("select*from products where active='yes'");
               while(rs.next())
               {
               %>
          <tr>
            <td><% = rs.getSring(1) %></td>
            <td><% = rs.getSring(2) %></td>
            <td><% = rs.getSring(3) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(4) %> </td>
            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>

                <%}
                    }
                    catch(Exception e)
                    {
                    System.out.println(e);
                    }%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>
</%@page>
</%@page>
</%@page>