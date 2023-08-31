<%@ page import="serverSettings.PlayerStats" %>
<!DOCTYPE html>
<html>
<head>
    <title>game-quest</title>
    <link href="static/main.css" rel="stylesheet">
</head>


<body>
<div>

    <h1> <strong><center>Welcome!</center></strong>
    </h1><strong><center>Let's get down to business!</center></strong>
    <center><strong>Prologue</strong> You are standing in the space board and ready to board your ship . Didn't' you dream about it?<br>
     Become the captain of a galactic ship with a crew that will perform feats under your command</center></p>
    <center><p> <strong>Getting</strong> to know the crew when you boarded the ship, you were greeted by a girl with a black folder in her
        hands:
    <br>
     -Hello team! I am Zinaida - your assistant! See? There, in the corner, our navigator, a sergeant, is drinking
        coffee.
    <br>
     A fumes train, our flight mechanic "black Bogdan" is sleeping under the helm, and "Sergei steel heel", our
        navigator, is photographing him.<br> And how to contact you?
    </center><p>
</div>
</head>


<p2><center><strong>Please entries your name:</strong></center></p2>
<center><form action="/game-quest/quest-1" method="post">
   <input type="text"  placeholder="enter name" required name="username"><%-- //сюда закидываем статистические данные--%>
    <button type="submit">introduce yourself</button>

</form></center>
</body>
</html>