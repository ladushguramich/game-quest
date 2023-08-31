<%@ page import="serverSettings.PlayerStats" %><%--
  Created by IntelliJ IDEA.
  User: Lado
  Date: 25.08.2023
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quest-4</title>
    <link href="static/main.css" rel="stylesheet">
</head>
<body>
<div>
    <center><h1>You told the truth about yourself.<br>You have been brought home </h1></center>
</div>
<div class="statistics">

    <form action="/game-quest/quest-2" method="post">
        <center><p style="vertical-aligne: bottom;">
            <p>Your username: <%= ((PlayerStats) session.getAttribute("playerStats")).getLoginName() %></p>
            <p>Your IP Address: <%= ((PlayerStats)session.getAttribute("playerStats")).getIpAddress()%></p>
            <p>Number of games:<%=((PlayerStats)session.getAttribute("playerStats")).getNumAttempts()%></p>
            <%--            //получаем статистические данные--%>
        </center>
        </p2>
    </form>
</div>

</body>
</html>
