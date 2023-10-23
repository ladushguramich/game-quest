<%@ page import="serverSettings.PlayerStats" %><%--
  Created by IntelliJ IDEA.
  User: Lado
  Date: 22.08.2023
  Time: 13:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Question-1</title>
    <link href="static/main.css" rel="stylesheet">
</head>

<body>
<div>


    <h1><strong>
        <center> You've lost your memory.<br>
            Accept the UFO challenge?
        </center>
    </strong>
    </h1>
    <center>
        <form action="/quest-2" method="post">
            <button type="submit">yes</button>
        </form>

            <form action="/quest.2" method="post">
            <button type="submit">no</button>
        </form>
    </center>
    </center>
    <div class="statistics">

        <form action="/quest-2" method="post">
            <center><p style="vertical-align: bottom;">
                <p>Your username: <%= ((PlayerStats) session.getAttribute("playerStats")).getLoginName() %></p>
                <p>Your IP Address: <%= ((PlayerStats)session.getAttribute("playerStats")).getIpAddress()%></p>
                <p>Number of games:<%=((PlayerStats)session.getAttribute("playerStats")).getNumAttempts()%></p>
                <%--            //получаем статистические данные--%>
            </center>
            </p2>
        </form>
    </div>

</div>
</body>
</html>
