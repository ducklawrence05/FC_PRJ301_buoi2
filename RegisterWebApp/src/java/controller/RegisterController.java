/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/process"})
public class RegisterController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String messageError = "";
        
        if (username.isEmpty() || password.isEmpty() || confirmPassword.isEmpty()){
            messageError = "username, password, confirm password are required.";
        } else if (!password.equals(confirmPassword)){
            messageError = "password is not matched confirm password.";
        } else {
            User newUser = new User(username, password, fullname, email);
            request.setAttribute("newUser", newUser);
            request.getRequestDispatcher("profile.jsp").forward(request, response);
            return;
        }
        
        request.setAttribute("message_error", messageError);
        request.getRequestDispatcher("index.jsp").forward(request, response);        
    }
}
