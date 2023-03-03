
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Shop</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<p><IMG class="displayed" src = "https://thumbs.dreamstime.com/z/%D0%BA%D1%80%D0%B0%D1%81%D0%BE%D1%87%D0%BD%D1%8B%D0%B9-%D0%B7%D0%B0%D0%B1%D1%80%D0%BE%D1%88%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9-%D0%B1%D1%80%D0%B8%D1%82%D0%B0%D0%BD%D1%81%D0%BA%D0%B8%D0%B9-%D0%BC%D0%B0%D0%B3%D0%B0%D0%B7%D0%B8%D0%BD-%D0%BD%D0%B0-%D1%83%D0%BB%D0%B8%D1%86%D0%B5-%D0%BE%D1%82-%D0%BD%D0%BE%D1%82%D1%82%D0%B8%D0%BD%D0%B3-%D1%85%D0%B8%D0%BB%D0%BB-205083715.jpg" width = "256" height = "400"></p>
<p>You went away from hospital.</p>
<p>Then you crossed the street and saw an abandoned shop at the end of the street.</p>
<p>You entered and noticed a pistol and machine gun on the table...</p>
<p>Pistol had 5 bullets inside and machine gun more than 100!</p>
<p>-May be somebody forgot it?</p>
<p>What will you choose to take?</p>
<button class="btnGreen" onclick="window.location='./takeItem?item=pistol'">PISTOL</button>
<button class="btnGreen" onclick="window.location='./takeItem?item=machineGun'">MACHINE GUN</button>
<p>-I am not a steeler! It is not mine.</p>
<button class="btnRed" onclick="window.location='./street.jsp'">REFUSE</button>


</body>
</html>

</html>
