<%@ tag language="java" %>
<%@ attribute name="city" required="true" %>
<%@ attribute name="country" required="true" %>
<%@ attribute name="code" required="true" %>
<jsp:useBean id="addressbean" class="beans.Address"></jsp:useBean>
<table>
    <tr>
        <td align="right" width="70">
         <b>Country</b>
            <td><input type="text" name="${address}_country" size="30" value="${addressbean.country}"></td>
        &nbsp;
        </td>
    </tr>
    <tr>
        <td align="right" width="70">
            <b>City</b>
        <td><input type="text" name="${address}_city" size="30" value="${addressbean.city}">
      </td>
        &nbsp;
        </td>
    </tr>
    <tr>
        <td align="right" width="70">
            <b>Code</b>
        <td><input type="text" name="${address}_code" size="30" value="${addressbean.code}"></td>
        &nbsp;
        </td>
    </tr>
    <tr>
        <td align="right">
        <input type="submit" value="Submit">
        </td>
    </tr>
</table>