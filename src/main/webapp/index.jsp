<%@ page import="java.util.Enumeration" %>
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
    <p>Implicit objects</p>
    <p><%application.setAttribute("applicationAttribute","this object is available for all sessions");
         session.setAttribute("sessionAttribute","this object is available for all requests");
         request.setAttribute("requestAttribute","this object is available for current request");
        Enumeration initParameters=config.getInitParameterNames();
         out.print("initialize parameters that receives <br> from implicit objects </br>");
              while(initParameters.hasMoreElements()){
                  String parameter=(String)initParameters.nextElement();
                  out.print("<br> Parameter name:"+parameter+"</br>");
                  out.print("Configuration:"+config.getInitParameter(parameter));
              }
        out.print("Implicit object <b>page</b> has a type:"+page.getClass().getName());
        out.print("Buffer size: "+response.getBufferSize()+" bytes");
    %>

         </p>
    <a href="implicitobjects.jsp">Next Page</a>
    <a href="student.jsp">Student Form</a>
</form>

</body>
</html>
