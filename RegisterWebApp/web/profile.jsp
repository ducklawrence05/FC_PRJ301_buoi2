<%-- 
    Document   : profile
    Created on : May 6, 2025, 11:52:14 PM
    Author     : Admin
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            User newUser = (User) request.getAttribute("newUser");
        %>
        
        <h1>New user information</h1>
        <div>Fullname: <%= newUser.getFullName() %> </div> <br/>
        <div>Username: <%= newUser.getUsername() %> </div> <br/>
        <div>Password: <%= newUser.getPassword() %> </div> <br/>
        <div>Email: <%= newUser.getEmail() %> </div>
    </body>
</html>
