<%--
  Created by IntelliJ IDEA.
  User: Mary Rachid
  Date: 26/05/2022
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<table class="table">
    <c:forEach items="${exportList}" var="p">
        <tr>
            <td><c:out value="${p.idModule}" /></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
