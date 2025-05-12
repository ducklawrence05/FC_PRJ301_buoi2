/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.Random;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "RandomController", urlPatterns = {"/random"})
public class RandomController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int playerChoice = Integer.parseInt(request.getParameter("player_choice"));
        int computerChoice = new Random().nextInt(3) + 1;
        
        String result = "";
        int compare = (playerChoice - computerChoice + 3) % 3;
        
        if (compare == 0) {
            result = "Draw!";
        } else if (compare == 1) {
            result = "You win!";
        } else {
            result = "Computer wins!";
        }
        
        request.setAttribute("player", playerChoice);
        request.setAttribute("computer", computerChoice);
        request.setAttribute("result", result);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    } 
}
