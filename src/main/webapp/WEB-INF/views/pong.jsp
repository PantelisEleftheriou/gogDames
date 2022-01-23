<%--
  Created by IntelliJ IDEA.
  User: chloptsi
  Date: 1/23/2022
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content=
            "width=device-width, initial-scale=1.0">
    <title>PONG GAME</title>
    <link rel="stylesheet" href="pong.css">
</head>

<body>
<div class="board">
    <div class='ball'>
        <div class="ball_effect"></div>
    </div>
    <div class="paddle_1 paddle"></div>
    <div class="paddle_2  paddle"></div>
    <h1 class="player_1_score">0</h1>
    <h1 class="player_2_score">0</h1>
    <h1 class="message">
        Press Enter to Play Pong
    </h1>
</div>

<script src="pong.js"></script>
</body>

</html>
