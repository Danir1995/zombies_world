<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: danir
  Date: 14.09.2022
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Equipment</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<p><IMG class="displayed" src = "https://www.gruppa99.com/upload/iblock/d38/d3800eeae9dc1c6fb3721652655fc704.png" width = "300" height = "400"></p>
<p>Your equipment:</p>
<c:forEach var="prod" items="${equipment}">

    <p> <a href="/destiny?chance=${prod}">${prod}</a></p>

</c:forEach>
<button class="btnRed" onclick="window.location='deathByZombies.jsp'">Go back</button>

</body>
</html>
