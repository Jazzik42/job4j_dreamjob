package ru.job4j.dream.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        for (File file : new File("c:\\images" + File.separator + "user_" + req.getParameter("id")).listFiles()) {
            if (name.equals(file.getName())) {
                file.delete();
                break;
            }
        }
        resp.sendRedirect(req.getContextPath() + "/candidates.do");
    }
}