<%@ page import="gr.peoplecert.gogdames.model.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Verify Page</title>
</head>
<body>
<span>We already send a verification  code to your email.</span>
    <form action="verification/{id}" method="post">
        <input type="text" name="authcode" >
        <input type="submit" value="verify">

        <% if ( user.getVerificationCode().equals(authcode) ) {
            user.setRegistered(1);
        }else {
            System.out.println("Wrong Vification code");  } %>

    </form>
</body>
</html>