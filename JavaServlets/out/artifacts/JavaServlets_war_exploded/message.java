import java.io.*;
import java.servlet.*;
import java.servlet.http.*;

public class message extends HttpServlet
{
    private String message;
    public void doGet(HttpServletRequest request,HttpServletResponse response)
    {
        message="hello friends";
        response.setContentType("text/html");
        PrintWriter out=request.getWriter();
        out.print("<h1>"+message+"</h1>");
    }

}