import javax.servlet.annotation.WebServlet
@WebServlet('/data')

class data extends HttpServlet
{
    public void doPost(HttpServletRequest req;HttpServletResponse res)
    {
      res.setContentType("json");

    }
}