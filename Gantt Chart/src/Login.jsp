<%--
  Created by IntelliJ IDEA.
  User: Fasiha Asim
  Date: 5/31/2019
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Project</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<form method="post" action="./index.html" class="container">
    <div class="form-group">
        <label>Id</label>
        <input class="form-control" type="text" name="id">
        <label>Name</label>
        <input class="form-control" type="text">
        <label>Start</label>
        <input class="form-control" type="date">
        <label>End</label>
        <input class="form-control" type="date">

    </div>
    <button class="btn btn-primary">Submit</button>
</form>
</body>
</html>
