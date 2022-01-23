<%--
  Created by IntelliJ IDEA.
  User: chloptsi
  Date: 1/23/2022
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<head>
    <meta name="viewport" content=
            "width=device-width, initial-scale=1.0">

    <!-- CSS file Included -->
    <link rel="stylesheet"
          type="text/css" href="../css/tetris.css">

    <!-- JavaScript file included -->
    <script src="../js/tetris.js"></script>
</head>

<body>
<div class="container">
    <h1>Canvas Tetris</h1>
    <div id="canvasTetris"></div>
    <div class="description">
        &#8592; &#8593; &#8594; &#8595; to move, P to pause
        <br/> Speed increases every 1000 earned score points
        <br/> Click to play
    </div>
</div>

</body>

</html>