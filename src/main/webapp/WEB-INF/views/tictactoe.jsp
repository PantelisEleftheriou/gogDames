<%--
  Created by IntelliJ IDEA.
  User: chloptsi
  Date: 1/23/2022
  Time: 4:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta name="viewport" content=
        "width=device-width, initial-scale=1.0">
    <!-- CSS file Included -->
    <link rel="stylesheet"
        type="text/css" href="../css/tic.css">
    <!-- JavaScript file included -->
    <script src="../js/tic.js"></script>
</head>
<body>
    <div id="main">
        <h1>TIC TAC TOE</h1>
        <!-- Game Instructions -->
        <p id="ins">Game starts by just Tap on
            box<br><br>First Player starts as
            <b>Player X</b><br>And<br>Second
            Player as <b>Player 0</b>
        </p>
        <br><br>
        <!-- 3*3 grid of Boxes -->
        <input type="text" id="b1" onclick=
            "myfunc_3(); myfunc();" readonly>
        <input type="text" id="b2" onclick=
            "myfunc_4(); myfunc();" readonly>
        <input type="text" id="b3" onclick=
            "myfunc_5(); myfunc();" readonly>
        <br><br>
        <input type="text" id="b4" onclick=
            "myfunc_6(); myfunc();" readonly>
        <input type="text" id="b5" onclick=
            "myfunc_7(); myfunc();" readonly>
        <input type="text" id="b6" onclick=
            "myfunc_8(); myfunc();" readonly>
        <br><br>
        <input type="text" id="b7" onclick=
            "myfunc_9(); myfunc();" readonly>
        <input type="text" id="b8" onclick=
            "myfunc_10();myfunc();" readonly>
        <input type="text" id="b9" onclick=
            "myfunc_11();myfunc();" readonly>
        <!-- Grid end here  -->
        <br><br><br>
        <!-- Button to reset game -->
        <button id="but" onclick="myfunc_2()">
            RESET
        </button>
        <br><br>
        <!-- Space to show player turn -->
        <p id="print"></p>
    </div>
</body>
</html>