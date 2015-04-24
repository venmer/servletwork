<%--
  Created by IntelliJ IDEA.
  User: maksim
  Date: 22.04.15
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="../../error.jsp"%>
<jsp:useBean id="student" class="beans.Student" scope="page"></jsp:useBean>
<jsp:setProperty name="student" property="name" value="Maksim"></jsp:setProperty>
<jsp:setProperty name="student" property="lastName" value="Remnev"></jsp:setProperty>
<html>
<head>
    <title>Student info</title>
</head>
<body>
<form id="studentForm">
    <p>Student info</p>
           <table cellpadding="0" border="0" cellspacing="0">
               <tr><td><label>
                   <input type="text" name="name"
                          value='<jsp:getProperty name="student" property="name"/>'>
               </label></td></tr>
               <tr><td><label>
                   <input type="text" name="lastname"
                          value='<jsp:getProperty name="student" property="lastName"/>'>
               </label></td></tr>
               <tr><td><input type="submit" value="Send"></td></tr>
</table>
    </form>
</body>
</html>
