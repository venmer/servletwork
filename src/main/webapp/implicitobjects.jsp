<%@ page import="java.util.Enumeration" %>
<%--
  Created by IntelliJ IDEA.
  User: maksim
  Date: 22.04.15
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Implicit objects two</title>
</head>
<body>
<p>get Application attributes</p>
<p>application: <%=application.getAttribute("applicationAttribute")%></p>
<p>session: <%=session.getAttribute("sessionAttribute")%></p>
<p>request: <%=request.getAttribute("requestAttribute")%></p>
<p>next attributes in application context:</p>
<br>
<p><%Enumeration attributesNames=pageContext.getAttributeNamesInScope(PageContext.APPLICATION_SCOPE);
      while(attributesNames.hasMoreElements()){
          out.print(attributesNames.nextElement());
          out.println("<br>");
      }%></p>
<a href="buggy.jsp">test error</a>
</body>
</html>
