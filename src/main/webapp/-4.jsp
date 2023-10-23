<%@ page import="serverSettings.PlayerStats" %><%--
  Created by IntelliJ IDEA.
  User: Lado
  Date: 25.08.2023
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quest.4</title>
    <link href="static/main.css" rel="stylesheet">
</head>
<body>
<center>
    <div>
        <h1>Your lodge has been exposed.<br> Defeat!</h1>
        <center><form action="/quest-1" method="post">
            <button type="submit">try again</button>
        </form></center>
    </div>
</center>
<div class="statistics">

    <form action="/quest-2" method="post">
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
