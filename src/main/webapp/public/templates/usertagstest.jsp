<%--
  Created by IntelliJ IDEA.
  User: maksim
  Date: 24.04.15
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="d" uri="demotaglib" %>
<html>
<head>
    <title>Demo tag lib</title>
</head>
<body>
<table>
    <d:DemoTagLibary name="Maksim" value="23" label="student"></d:DemoTagLibary>
    <d:DemoTagLibary name="Sergey" value="22" label="student"></d:DemoTagLibary>
    <d:DemoTagLibary name="Ivan" value="22" label="employee"></d:DemoTagLibary>
    <tr>
        <td>
            <input type="submit" value="Send">
        </td>
    </tr>
</table>

</body>
</html>
