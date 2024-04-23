<%-- 
    Document   : deleteProductResult
    Created on : Apr 24, 2024, 2:12:16 AM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Product Result</title>
</head>
<body>
    <h1>Delete Product Result</h1>
    
    <%-- Display error message if present --%>
    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>
    
    <%-- Display success message if present --%>
    <c:if test="${not empty message}">
        <p style="color: green;">${message}</p>
    </c:if>
</body>
</html>

