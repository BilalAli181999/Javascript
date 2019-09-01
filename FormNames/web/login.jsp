<%--
  Created by IntelliJ IDEA.
  User: Fasiha Asim
  Date: 5/21/2019
  Time: 9:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="java.util.Enumeration" language="java" %>
    <%@ page errorPage="error.jsp" %>
    <title>Title</title>
</head>
<body>
<%

    Enumeration <String> names;

    names=request.getAttributeNames();
out.print(names.hasMoreElements());
    while(names.hasMoreElements())
    {
        String name=(String) names.nextElement();
        String values[]=request.getParameterValues(name);

        for(int i=0;i<values.length;i++)
        {
            out.print(name+" has "+values[i]);
        }
    }

%>
</body>
</html>
