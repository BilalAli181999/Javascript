<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>websignup</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="assets/css/Responsive-Form.css">
    <link rel="stylesheet" href="assets/css/Responsive-Form1.css">
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
            String query = "insert into user (Name,Email,Password) values ?,?,?";

            PreparedStatement stmt = con.prepareStatement(query);
            String name,email,password;
            name=request.getParameter("name");
            email=request.getParameter("email");
            password=request.getParameter("password");

            stmt.setString(1, name);

            stmt.setString(2, email);
            stmt.setString(3, password);
            ResultSet rs = stmt.executeQuery();

            if(rs.next())
            {
                %>  <script>alert("User Added")</script>   <%
            }
            else
            {
%>
<script>alert("Failed");</script>
<%
    }

}
catch(SQLException ex){
%>
<script>alert("Error");</script>
<%  }
}
%>
<body>
    <div class="container">
        <div>
            <form>
                <div class="form-group">
                    <div id="formdiv" style="background-color:rgba(0,0,0,0.2);">
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col-md-8 offset-md-1">
                                <p style="margin-left:2%;font-family:Roboto, sans-serif;font-size:24px;"><strong>Name </strong></p>
                            </div>
                            <div class="col-md-10 offset-md-1"><input class="form-control" type="text" name="name" placeholder="Name" style="margin-left:0px;font-family:Roboto, sans-serif;"></div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;margin-top:-16px;">
                            <div class="col-md-8 offset-md-1">
                                <p style="margin-left:2%;font-family:Roboto, sans-serif;font-size:24px;"><strong>CNIC</strong></p>
                            </div>
                            <div class="col-md-10 offset-md-1"><input class="form-control" name="cnic" type="number"></div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col-md-8 offset-md-1">
                                <p style="margin-left:2%;font-family:Roboto, sans-serif;font-size:24px;"><strong>Email</strong></p>
                            </div>
                            <div class="col-md-10 offset-md-1"><input class="form-control" name="email" type="email" placeholder="abc@email.com"></div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col-md-8 offset-md-1">
                                <p style="margin-left:2%;font-family:Roboto, sans-serif;font-size:24px;"><strong>Password</strong></p>
                            </div>
                            <div class="col-md-10 offset-md-1"><input class="form-control" type="text" name="password" placeholder="Password" style="margin-left:0px;font-family:Roboto, sans-serif;"></div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col-md-8 offset-md-1">
                                <p style="margin-left:2%;font-family:Roboto, sans-serif;font-size:24px;"><strong>Confirm Password</strong></p>
                            </div>
                            <div class="col-md-10 offset-md-1" style="font-family:Roboto, sans-serif;"><input class="form-control" name="confirm" type="text" placeholder="Password" style="margin-left:0px;"></div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col-12 col-md-4 offset-md-4"><button class="btn btn-light btn-lg" type="reset" style="font-family:Roboto, sans-serif;background-color:#4456f4;width:97px;">Clear </button><button class="btn btn-light btn-lg" type="submit" style="margin-left:16px;color:#000000;background-color:#4456f4;">Submit </button></div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>