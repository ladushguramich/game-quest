<%@ page import="serverSettings.PlayerStats" %><%--
  Created by IntelliJ IDEA.
  User: Lado
  Date: 25.08.2023
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quest.2</title>
    <link href="static/main.css" rel="stylesheet">
</head>
<body>
<div>
    <center><h1>You rejected the call.
        Defeat!</h1></center>
    <center><form action="/quest-1" method="post">
        <input type="hidden" name="reset" value="true">
        <button type="submit" name="tryAgain">try again</button>
    </form></center>
</div>
<div class="statistics">

    <form action="/quest-2" method="post">
        <center><p style="vertical-aligne: bottom;">
            <p>Your username: <%= ((PlayerStats) session.getAttribute("playerStats")).getLoginName() %></p>
            <p>Your IP Address: <%= ((PlayerStats)session.getAttribute("playerStats")).getIpAddress()%></p>
            <p>Number of games:<%=((PlayerStats)session.getAttribute("playerStats")).getNumAttempts()%></p>
        </center>
        </p2>
    </form>
</div>

</body>
</html>
