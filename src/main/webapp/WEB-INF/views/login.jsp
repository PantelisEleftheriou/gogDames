<%--
  Created by IntelliJ IDEA.
  User: ANNA
  Date: 23/12/2021
  Time: 6:24 μ.μ.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>gogDames</title>
    <link rel="stylesheet" type="text/css" href="../css/style2.css"/>
    <link rel="stylesheet" type="text/js" href="../login.js"/>
</head>
<body>
<div class="container">
    <div class="frame">
        <div class="nav">
            <ul class="links">
                <li class="signin-active"><a class="btn" href="/">Sign in</a></li>
                <li class="signup-inactive"><a class="btn" href="register">Sign up </a></li>
            </ul>
        </div>
        <form class="form-signin" action="gogDames_war/login" method="post" name="form">
            <%--@declare id="username"--%><%--@declare id="password"--%>
            <label for="username"></label>
            <input class="form-styling" type="text" name="username" placeholder="Username"/>
            <label for="password"></label>
            <input class="form-styling" type="password" name="password" placeholder="Password"/>
            <button type="submit" class="btn-signin">Sign in</button>
        </form>
    </div>
</div>
</body>
</html>