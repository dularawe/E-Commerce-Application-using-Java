<%-- 
    Document   : logout
    Created on : May 1, 2024, 11:13:46 PM
    Author     : Chathushka
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    // Get the session

    
    // Invalidate the session if exists
    if(session != null) {
        session.invalidate(); // Invalidate the session
    }
    
    // Redirect the user to the login page or any other desired page after logout
    response.sendRedirect("login.jsp");
%>
