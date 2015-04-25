<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: maksim
  Date: 25.04.15
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<% List<String> names=new ArrayList<String>();
    names.add("Maksim");
    names.add("Remnev");
    request.setAttribute("names",names);
%>
<head>
    <title>Basic tag demonstration</title>
</head>
<body>
<c:set var="name" scope="page" value="${param.name}"></c:set>
<c:out value="Hello,"></c:out>
<c:choose>
<c:when test="${!empty name}">
    <c:out value="${name}"></c:out>
</c:when>
    <c:otherwise>
        <c:out value="stranger"></c:out>
<br/>
<c:out value="Need a name? There are a few names"></c:out>
<br/>
<ul>
<c:forEach var="name"
        items="${requestScope.names}">
    <li><c:out value="${name}"></c:out></li>
        </c:forEach>
    </ul>
 </c:otherwise>
    </c:choose>
<c:remove var="name" scope="page"></c:remove>
</body>
</html>
