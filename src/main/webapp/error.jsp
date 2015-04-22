<%@ page import="java.io.StringWriter" %>
<%@ page import="java.io.PrintWriter" %>
<%--
  Created by IntelliJ IDEA.
  User: maksim
  Date: 22.04.15
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error page</title>
</head>
<body>
<p>There is some errors in application work:</p>
<p><%
    StringWriter sw=new StringWriter();
    PrintWriter pw=new PrintWriter(sw);
    exception.printStackTrace(pw);
    out.print(sw.toString());
%></p>

</body>
</html>
