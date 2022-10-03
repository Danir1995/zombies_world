<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: danir
  Date: 16.09.2022
  Time: 6:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Park</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<c:if test="${chance eq 'pistol'}">
    <p>You took a pistol. There only 4 zombies and you have 5 bullets! I am lucky!</p>
    <p>You killed them!</p>
    <p>And you went away... Like a hero...</p>
    <p>You went as fast as possible because it could be more zombies there.</p>
    <p>You ended up in the park, breathed fresh air and when you turned towards the river, you saw about 50 zombies running in your direction... you have one bullet left...</p>
    <p><IMG class="displayed" src = "http://img-fotki.yandex.ru/get/9347/63653606.18/0_8a578_f47bf09e_XL.jpg" width = "500" height = "350"></p>
    <p>What will you do?</p>
    <p>Information of <%=session.getAttribute("user")%>.</p>
    <p></p>
    <p></p>
    <p>START AGAIN?</p>
    <button class="btnRed" onclick="window.location='index.jsp'">YES</button>
</c:if>
</body>
</html>
