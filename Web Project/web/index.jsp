<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>webpg1</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%

    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost/enrollment", "root", "");//add your database link
    String sub = request.getParameter("submit");
    String sub2 = request.getParameter("submit1");
    if(sub != null && sub.equals("submit"))
    {
        try {
            String query = "Select * from user where lower (username) = ? and password = ?";

            PreparedStatement stmt = con.prepareStatement(query);

            String user = request.getParameter("email").toLowerCase();

            String pass = request.getParameter("password");

            stmt.setString(1, user);

            stmt.setString(2, pass);

            ResultSet rs = stmt.executeQuery();

            if(rs.next())
             {
                 response.sendRedirect("addProj.jsp");
             }
            else
            {
                %>
<h1>Connection Failed</h1>
<%
            }

}
            catch(SQLException ex){
        %>
<h1>Error Ocoured</h1>
      <%  }
    }
%>

<body>
    <div class="login-clean" style="background-color:rgba(0,0,0,0);">
        <header></header>
        <form method="post" style="background-color:rgba(0,0,0,0.2);">
            <h2 class="sr-only">Login Form</h2>
            <div class="illustration"><i class="icon ion-locked" style="color:rgb(112,70,79);"></i></div>
            <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email"></div>
            <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="background-color:#70464f;">Log In</button></div>
        </form>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>