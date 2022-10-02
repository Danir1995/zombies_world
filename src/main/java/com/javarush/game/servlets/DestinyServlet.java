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
@WebServlet(name = "destiny", value = "/destiny")
public class DestinyServlet extends HttpServlet {
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
        String destiny = req.getParameter("chance");
        req.setAttribute("chance", destiny);
        if (destiny.equals("pistol")){
            getServletContext()
                    .getRequestDispatcher("/park.jsp")
                    .forward(req, resp);
        }
        if (userRepository.isExists(user.getUserName())) {
            user = userRepository.fetchByUsername(user.getUserName());
            user.useItem(destiny);
            getServletContext()
                    .getRequestDispatcher("/deathByZombies.jsp")
                    .forward(req, resp);
        }else {
            throw new RuntimeException("user doesn't exist.");
        }
    }
}
