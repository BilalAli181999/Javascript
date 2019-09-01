<%--
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

  <title>Login Page</title>
</head>
  <body>
  <div class="container col-md-4 offset-md-4">
    <form method="post" action="contents.jsp">
      <div class="form-group">
        <label>Name</label>
        <input class="form-control" type="text" name="nameField" id="name" placeholder="Username">

      </div>
      <div class="form-group">
        <label>Password</label>
        <input class="form-control" type="Password" name="passwordField" id="passwd" placeholder="Password">

      </div>
        <div class="form-group">
            <label>Course Code</label>
            <input class="form-control" type="number" name="cCode" id="crsCode" placeholder="Course Code">

        </div>
        <br>Set the languages you prefer
        <table class="table">
            <tr>
                  <td> <input type="checkbox" name="subject" value="C++">C++</td>
            </tr>
            <tr>
               <td> <input type="checkbox" name="subject" value="Java">Java</td>
            </tr>
            <tr>
              <td>  <input type="checkbox" name="subject" value="Python">Python</td>
            </tr>

        </table>

      <div>
          <br><button class="btn btn-primary" type="submit" id="btn">Submit</button></br>
      </div>

    </form>


  </div>
<script>
    document.getElementById("btn").addEventListener('click',function () {
        alert( document.getElementById("name").value);
    })
</script>
  </body>
</html>
