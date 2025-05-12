<%-- 
    Document   : index
    Created on : May 6, 2025, 10:52:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Result</h1>
        <p>Player choice: </p>
        <c:choose>
            <c:when test="${requestScope.player == 1}">Rock</c:when>
            <c:when test="${requestScope.player == 2}">Paper</c:when>
            <c:otherwise>Scissors</c:otherwise>
        </c:choose>
        
        <p>Computer choice: </p>
        <c:choose>
            <c:when test="${requestScope.computer == 1}">Rock</c:when>
            <c:when test="${requestScope.computer == 2}">Paper</c:when>
            <c:otherwise>Scissors</c:otherwise>
        </c:choose>
            
        <h2> Result: ${requestScope.result} </h2>
    </body>
</html>
