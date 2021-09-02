package ru.job4j.dream.servlet;

import ru.job4j.dream.EmailException;
import ru.job4j.dream.model.User;
import ru.job4j.dream.store.PsqlStore;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegServlet extends HttpServlet {
    private static final Logger LOG = LoggerFactory.getLogger(RegServlet.class.getName());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            User user = new User(0,
                    req.getParameter("name"),
                    req.getParameter("email"),
                    req.getParameter("password"));
            PsqlStore.instOf().addUser(user);
            resp.sendRedirect(req.getContextPath() + "/login.jsp");
        } catch (EmailException e) {
            LOG.error("Error from add user method", e);
            req.setAttribute("error", "Данный email же зарегистрирован в системе.");
            resp.sendRedirect(req.getContextPath() + "/reg.jsp");
        }
    }
}