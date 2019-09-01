<%@ page import="javafx.scene.control.Alert" %><%--
  Created by IntelliJ IDEA.
  User: Fasiha Asim
  Date: 5/15/2019
  Time: 12:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Status</title>
    <%@ page import="java.util.Enumeration" language="java" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<%


    String name="",password="",crsCode="";
    String values[]=null;
    name=request.getParameter("nameField");
    password=request.getParameter("passwordField");
    crsCode=request.getParameter("cCode");
    values=request.getParameterValues("subject");
    MyConManager conn;
    conn = new MyConManager();
    c.test();


%><div class="container">

    <table class="table table-stripped table-bordered">
        <tr>
            <th> Parameter Names</th>


            <th> Parameter Value(s)</th>
        </tr>
        <tr>
            <td> Username</td>
            <td><%=name %></td>

        </tr>
        <tr>
            <td> Password</td>
            <td><%=password %></td>

        </tr>
        <tr>
            <td> Course Code</td>
            <td><%=crsCode %></td>

        </tr>
        <tr>
            <td> Preferred Languages</td>
            <td><%
                for(int i=0;i<values.length;i++)
                {%><table><tr>
                <%=values[i]%></tr></table>
                <%}%>
            </td>

        </tr>
    </table>
</div>

</body>
</html>
