<%--
  Created by IntelliJ IDEA.
  User: Fasiha Asim
  Date: 8/7/2019
  Time: 11:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Images</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
    .box{
           width: 100%;
        height: 100%;
        background:linear-gradient(to right,dodgerblue,rebeccapurple,deeppink);
        display: table;

        align-items: center;
    }
    .card{
        height: 200px;
        width: 200px;
        border: white 1px solid;
        background-color: chartreuse;

    }
    #img{
        height: 80%;
        width:80%;
        margin: 10%;

    }
</style>
</head>

<body>
<h1>Images Page</h1>

<div class="box">
<%
    for(int i=0;i<10;i=i+1)
    {%>
    <div class="card">
<img id="img" src="<%=i%2%>.jpg">


    </div>
<%}%>
</div>
</body>
</html>
