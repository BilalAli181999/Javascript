

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@WebServlet(urlPatterns = {"/JSONServlet"})
public class JSONServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      PrintWriter out=response.getWriter();
        response.setContentType("application/json");

        JSONArray json = new JSONArray();
        JSONObject obj=new JSONObject();
        try {
            obj.put("name","Bilal Ali");                    //here put data from database per activity in each object
            obj.put("id","8210");
            obj.put("start","2019-01-12");
            obj.put("name","2019-09-12");

        } catch (JSONException e) {
            e.printStackTrace();
        }
        json.put(obj);
        out.println(json);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
