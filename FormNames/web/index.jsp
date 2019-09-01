<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Fasiha Asim
  Date: 5/15/2019
  Time: 12:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <title>Form Names</title>
</head>
<body>
<div class="container col-md-4 offset-md-4">
  <form method="post" action="login.jsp">
    <div class="form-group">
      <label>Name</label>
      <input class="form-control" type="text" name="nameField" id="name">

    </div>
    <div class="form-group">
      <label>Password</label>
      <input class="form-control" type="Password" name="passwordField" id="passwd">

    </div>
    <div>
      <br> Maths    <input type="checkbox" name="subject" value="Maths">
      Physics  <input type="checkbox" name="subject" value="Physics"></br>
      <br>English  <input type="checkbox" name="subject" value="English">
      Computer <input type="checkbox" name="subject" value="Computer"></br>
    </div>
    <div>
      <br><button class="btn btn-success" type="submit" id="btn">Submit</button></br>
    </div>

  </form>




</div>

</body>
</html>
