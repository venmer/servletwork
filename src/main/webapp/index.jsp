<%@ page import="java.util.Date" %>
<%@ page import="java.io.IOException" %>
<%--
  Created by IntelliJ IDEA.
  User: maksim
  Date: 22.04.15
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test time jsp page</title>
</head>
<body>
<form id="time" name="timepage">
    <p>Date and time: <% out.print(new Date()); %></p>
</form>

</body>
</html>
