<%--
  Created by IntelliJ IDEA.
  User: Fasiha Asim
  Date: 6/30/2019
  Time: 10:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Ajax</title>
  </head>
  <body>


  <h1>
    My Data
  </h1>
  <input id="display">
<script type="text/javascript" language="JavaScript">

  $.ajax({
    url:"http://localhost:7777/ajax_war_exploded/data",
    method:"post",
    datatype:"json",
    success: function (res) {
      var data=JSON.parse(res);
      $('#display').val(data);
    }
  })

</script>
  </body>
</html>
