package servlets;

import beans.Address;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * autor:maksim
 * date: 24.04.15
 * time: 16:00.
 */
@WebServlet(urlPatterns = "/address")
public class CustomTagDemoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Address address=new Address();
        address.setCity("Gatchina");
        address.setCode("188300");
        address.setCountry("Russia");
        req.setAttribute("address",address);
        req.getRequestDispatcher("/public/templates/addressform.jsp").forward(req,resp);
    }
}
