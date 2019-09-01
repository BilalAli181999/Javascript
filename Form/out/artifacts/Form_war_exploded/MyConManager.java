
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Anzar Ahmad
 */
public class MyConManager {
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public  test(String s)
    {

    }
    public ResultSet getResultSet(String s)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_user","root","");
            ps = con.prepareStatement(s);
            rs = ps.executeQuery();
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return rs;
    }
    
}
