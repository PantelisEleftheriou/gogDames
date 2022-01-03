<%--
  Created by IntelliJ IDEA.
  User: ANNA
  Date: 24/12/2021
  Time: 11:31 π.μ.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style2.css">

    <script src="login.js"></script>

    <title>gogDames</title>
</head>

<body>
<div class="container">
    <div class="frame">
        <div class="nav">
            <ul class="links">
                <li class="signin-inactive"> <a class="btn" href="login1.html">Sign in</a></li>
                <li class="signup-active"><a class="btn" href="register.html">Sign up</a></li>
            </ul>
        </div>
        <form onSubmit="registration(event)"class="form-signin" action="" method="post" name="form">
            <%--@declare id="password"--%><%--@declare id="first_name"--%><%--@declare id="last_name"--%><%--@declare id="date_of_birth"--%><%--@declare id="email"--%><%--@declare id="username"--%><label for="first_name"></label>
            <input class="form-styling" type="text"  name="first_name" placeholder="First Name" id="t1"/>
            <label for="last_name"></label>
            <input class="form-styling" type="text" name="last_name" placeholder="Last Name" id="t2" />
            <label for="date_of_birth">Date of birth:</label>
            <input class="form-styling" type="date" name="date_of_birth" placeholder="" id="t3"/>
            <label for="email"></label>
            <input class="form-styling" type="text" name="email" placeholder="E-mail" id="t4" />
            <label for="password">Use a combination of uppercase letters, lower case letters, numbers, and special characters for your Password</label>
            <input class="form-styling" type="password" name="password" placeholder="Password" id="t5"/>
            <label for="username"></label>
            <input class="form-styling" type="text" name="username" placeholder="Username" id="t6" />
            <button type="submit"  class="btn-signup"><strong>Sign up</strong></button>
        </form>
    </div>
</div>
</body>


</html>
