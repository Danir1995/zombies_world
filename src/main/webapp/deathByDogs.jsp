<%--
  Created by IntelliJ IDEA.
  User: danir
  Date: 16.09.2022
  Time: 2:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Death by dogs</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<p><IMG class="displayed" src = "https://st3.depositphotos.com/1695244/32109/i/600/depositphotos_321091354-stock-photo-trio-black-anubis-hounds-hellhound.jpg" width = "400" height = "256"></p>
<p>Your scream has been heard, three hellhounds came to eat you.<p>
<p>YOU LOSE<p>
<p>START AGAIN?</p>
<p>Information of <%=session.getAttribute("user")%>.</p>
<button class="btnRed" onclick="window.location='index.jsp'">YES</button>
</body>
</html>
