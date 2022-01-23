<%-- 
    Document   : user
    Created on : Jan 14, 2022, 4:06:20 PM
    Author     : Pantelis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
              integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <title>Admin Page</title>
        <link rel="stylesheet" type="text/css" href="../css/styles.css"/>
        <script src="../js/app.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg py-3 px-4 auto-hiding-navbar fixed-top">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <form class="search_form d-flex ms-auto mt-1 mb-0">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-primary" type="submit">Search</button>
                </form>
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-bs-toggle="dropdown" aria-expanded="false">
                            Hello ${user.firstName}</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home">HOME</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/settings">Settings</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
        <nav id="sidebar" class="col sidebar">
            <a href="${pageContext.request.contextPath}/home" class="navbar-brand">
                <img src="${pageContext.request.contextPath}/img/gogDamesLogo.jpg" alt="logo" class="logo">
            </a>
        </nav>
        <div class="main container">
            <div>
                <a href="${pageContext.request.contextPath}/tetris">
                    <img src="${pageContext.request.contextPath}/img/download.png">
                </a>
                <a><b>Our classic game, To play with your friends or to make new ones!</b></a>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/tictactoe">
                    <img src="${pageContext.request.contextPath}/img/download.png">
                </a>
                <a><b>Our classic game, To play with your friends or to make new ones!</b></a>
            </div>
            <div>
                <a href="${pageContext.request.contextPath}/pong">
                    <img src="${pageContext.request.contextPath}/img/download.png">
                </a>
                <a><b>Our classic game, To play with your friends or to make new ones!</b></a>
            </div>
            <div>
                <a class="nav-link" href="${pageContext.request.contextPath}/payment/" + ${request.getParameter}>Buy VIP</a>
            </div>
            <div>
                <textarea id="chat" cols="20"></textarea>
                <button id="Send">Ask</button>
                <button id="Close Chat">Leave</button>
                <div>
                    <ul id="chathistory">
                    </ul>
                </div>
            </div>    
        </div>
            <script>
            </script>
    </body>
</html>
