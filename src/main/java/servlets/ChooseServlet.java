package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * autor:maksim
 * date: 17.04.15
 * time: 14:09.
 */
public class ChooseServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] actions=req.getParameterValues("actions");
        resp.setContentType("text/html");
        PrintWriter pw=resp.getWriter();

        if(actions != null) {
            pw.print("<p> You are select next actions: </p>");
            for (String a : actions) {
                pw.print("<p>"+a+"</p>");
                pw.print("<br>");
            }
        }else{
            pw.print("<p> You are select nothing </p>");
        }
    }
}
