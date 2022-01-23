<%-- 
    Document   : userSettings
    Created on : Jan 17, 2022, 10:46:04 AM
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

        <div class="main col-11 container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2><b>User Settings</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#editUserModal" class="btn btn-primary" data-bs-toggle="modal"><i
                                    class="material-icons">&#xe147;</i>Edit</a>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Date of birth</th>
                            <th>e-mail</th>
                            <th>Username</th>
                            <th>Profile Picture</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.dateOfBirth}</td>
                            <td>${user.email}</td>
                            <td>${user.username}</td>
                            <td>${user.profilePicture}</td>
                            <td>
                                <a href="#editUserModal" onclick="editClick(${user.userId})" class="edit" data-bs-toggle="modal"><i class="material-icons"
                                                                                                                                    data-bs-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            </td>
                        </tr>
                    </tbody>
                    <!-- Edit Modal HTML -->
                    <div id="editUserModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form:form method="Post" id="userSubmit">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Settings</h4>
                                        <button type="button" class="close" data-bs-dismiss="modal" aria-hidden="true">&times;</button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <input type="text" class="form-control" id="fNameEdit" name="firstName" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <input type="text" class="form-control" id="lNameEdit" name="lastName" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Date Of Birth</label>
                                            <input type="date" class="form-control" id="dateOfBirthEdit" name="dateOfBirth">
                                        </div>
                                        <div class="form-group">
                                            <label>E mail</label>
                                            <input type="text" class="form-control" id="emailEdit" name="email" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="text" class="form-control" id="passwordEdit" name="password">
                                        </div>
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input type="text" class="form-control" id="usernameEdit" name="username" required>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" class="btn btn-default" data-bs-dismiss="modal" value="Cancel">
                                        <input type="submit" class="btn btn-info" value="Save">
                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </div>    
            </div>
        </div>
        <script type="text/javascript">function editClick(userId) {
                var url = "http://localhost:8080/admin/getUserById/" + userId;
                $.getJSON(url, function (result) {
                    $("#fNameEdit").val(result.firstName);
                    $("#lNameEdit").val(result.lastName);
                    $("#dateOfBirthEdit").val(result.dateOfBirth);
                    $("#emailEdit").val(result.email);
                    $("#passwordEdit").val(result.password);
                    $("#usernameEdit").val(result.username);
                    $("#userSubmit").attr("action", "updateUser/" + result.userId);
                });
            }
        </script>
    </body>
</html>
