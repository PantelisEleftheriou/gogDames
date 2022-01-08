<%-- 
    Document   : nav
    Created on : Dec 17, 2021, 1:54:38 PM
    Author     : Pantelis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
    <head>
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
                            Hello Admin
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/modifyGames">Delete/Modify Games</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/modifyUsers">Delete/Modify Users</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="row">
            <div class="col-1">
                <nav id="sidebar" class="col sidebar">
                    <a href="${pageContext.request.contextPath}/admin/mainPage" class="navbar-brand">
                        <img src="${pageContext.request.contextPath}/img/gogDamesLogo.jpg" alt="logo" class="logo">
                    </a>
                    <ul class="nav flex-column vertical-nav">
                        <li class="nav-item">
                            <a id="admin" class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/admin/mainPage">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                     class="bi bi-house-door" viewBox="0 0 16 16">
                                <path
                                    d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z" />
                                </svg>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="game" class="nav-link" href="${pageContext.request.contextPath}/admin/modifyGames">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                     class="bi bi-joystick" viewBox="0 0 16 16">
                                <path
                                    d="M10 2a2 2 0 0 1-1.5 1.937v5.087c.863.083 1.5.377 1.5.726 0 .414-.895.75-2 .75s-2-.336-2-.75c0-.35.637-.643 1.5-.726V3.937A2 2 0 1 1 10 2z" />
                                <path
                                    d="M0 9.665v1.717a1 1 0 0 0 .553.894l6.553 3.277a2 2 0 0 0 1.788 0l6.553-3.277a1 1 0 0 0 .553-.894V9.665c0-.1-.06-.19-.152-.23L9.5 6.715v.993l5.227 2.178a.125.125 0 0 1 .001.23l-5.94 2.546a2 2 0 0 1-1.576 0l-5.94-2.546a.125.125 0 0 1 .001-.23L6.5 7.708l-.013-.988L.152 9.435a.25.25 0 0 0-.152.23z" />
                                </svg>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="user" class="nav-link" href="${pageContext.request.contextPath}/admin/modifyUsers">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                     class="bi bi-people-fill" viewBox="0 0 16 16">
                                <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                <path fill-rule="evenodd"
                                      d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z" />
                                <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z" />
                                </svg>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <script>
            // Get the container element
            var btn1 = document.getElementById("admin");
            var btn2 = document.getElementById("game");
            var btn3 = document.getElementById("user");
            var url = window.location.href;

            if (url.includes("mainPage")) {
                btn1.className = " active";
            } else if (url.includes("modifyGames")) {
                btn2.className = " active";
            } else if (url.includes("modifyUsers")) {
                btn3.className = " active";
            }
        </script>
    </body>
</html>
