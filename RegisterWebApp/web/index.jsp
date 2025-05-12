<%-- 
    Document   : register
    Created on : May 6, 2025, 11:33:12 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String message_error = (String) request.getAttribute("message_error");
        %>
        
        <h1>Register</h1>
        <form action="process" method="POST">
            <input type="text" name="fullname" placeholder="Full name" /> <br/>
            <input type="text" name="username" placeholder="Username" /> <br/>
            <input type="password" name="password" placeholder="Password" /> <br/>
            <input type="password" name="confirm_password" placeholder="Confirm password" /> <br/>
            <input type="text" name="email" placeholder="Email"/> <br/>
            <input type="submit" value="Register" />
        </form>
        
        <% if(message_error != null && !message_error.isEmpty()) {%>
            <%= message_error %>
        <% } %>
    </body>
</html>
