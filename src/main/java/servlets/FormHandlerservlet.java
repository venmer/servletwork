package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * autor:maksim
 * date: 17.04.15
 * time: 13:44.
 */
@WebServlet(urlPatterns="/formdata")
public class FormHandlerservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter pw=resp.getWriter();
        resp.setContentType("text/html");
        pw.print("<p> This is formdata form! </p>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String text=req.getParameter("enteredValue");
        resp.setContentType("text/html");
        PrintWriter pw=resp.getWriter();
        if(text!=null){
            pw.print("<p>");
            pw.print("You are insert: ");
            pw.print(text);
            pw.print("</p>");
        }else{
            pw.print("<p>You are insert nothing !</p>");
        }
    }
}
