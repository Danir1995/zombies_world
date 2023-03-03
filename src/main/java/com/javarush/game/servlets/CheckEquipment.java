package com.javarush.game.servlets;

import com.javarush.game.engine.User;
import com.javarush.game.engine.UserRepository;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Check", value = "/check")
public class CheckEquipment extends HttpServlet {
    private UserRepository userRepository = null;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = config.getServletContext();
        userRepository = (UserRepository) servletContext.getAttribute("userRepository");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        if (userRepository.isExists(user.getUserName())) {
            user = userRepository.fetchByUsername(user.getUserName());
            session.setAttribute("equipment", user.getItems());
        } else {
            throw new RuntimeException("user doesn't exist.");
        }
        resp.sendRedirect("equipment.jsp");
    }
}
