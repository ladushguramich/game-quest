<%@ page import="serverSettings.PlayerStats" %><%--
  Created by IntelliJ IDEA.
  User: Lado
  Date: 25.08.2023
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Question-2</title>
    <link href="static/main.css" rel="stylesheet">
</head>
<body>
<div>

    <center><h1>You accepted the challenge.<br>
        Will you go up to the captain's bridge?</h1></center>
    </h1>
    <center>
        <form action="/quest-3" method="post">
            <button type="submit">yes</button>
        </form>
        </form>
        <form action="/quest.2" method="post">
            <button type="submit">no</button>
        </form>
    </center>
    </center>
</div>
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