<%-- 
    Document   : admin
    Created on : Dec 13, 2021, 9:34:37 PM
    Author     : Pantelis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

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
<%@ include file="nav.jsp" %>
<div class="main col-11 container">
    <div class="row">
        <div class="col-4">
            <selection id="recently-posted">
                <div class="card">
                    <div class="card-header">
                        Recently Played Game
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="row g-0">
                                <div class="col-md-3">
                                    <img src="${pageContext.request.contextPath}/img/gogDamesLogo.jpg"
                                         alt="Post One Photo" class="img-fluid
                                                 rounded-lg">
                                </div>
                                <div class="col-md-9">
                                    <div class="card-body">
                                        <h6 class="card-title">Tetris</h6>
                                        <p class="card-text">The classic old times</p>
                                        <p class="card-text"><small class="text-muted">Added 3 days ago
                                        </small></p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="row g-0">
                                <div class="col-md-3">
                                    <img src="${pageContext.request.contextPath}/img/gogDamesLogo.jpg"
                                         alt="Post One Photo" class="img-fluid
                                                 rounded-lg">
                                </div>
                                <div class="col-md-9">
                                    <div class="card-body">
                                        <h6 class="card-title">Tetris</h6>
                                        <p class="card-text">The classic old times</p>
                                        <p class="card-text"><small class="text-muted">Added 3 days ago
                                        </small></p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="row g-0">
                                <div class="col-md-3">
                                    <img src="${pageContext.request.contextPath}/img/gogDamesLogo.jpg"
                                         alt="Post One Photo" class="img-fluid
                                                 rounded-lg">
                                </div>
                                <div class="col-md-9">
                                    <div class="card-body">
                                        <h6 class="card-title">Tetris</h6>
                                        <p class="card-text">The classic old times</p>
                                        <p class="card-text"><small class="text-muted">Added 3 days ago
                                        </small></p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </selection>
        </div>

        <div class="col-8">
            <section id="statistics">
                <div class="card">
                    <div class="card-header">
                        Statistics
                    </div>
                    <div class="stats py-3 px-4">
                        <div class="py-4">
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped" role="progressbar"
                                     style="width: 57%" aria-valuenow="57" aria-valuemin="0" aria-valuemax="100">
                                </div>
                            </div>
                            <p class="card-text">People liked tetris</p>
                        </div>
                        <div class="py-4">
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped bg-success" role="progressbar"
                                     style="width: 36%" aria-valuenow="36" aria-valuemin="0" aria-valuemax="100">
                                </div>
                            </div>
                            <p class="card-text">People liked arcade</p>
                        </div>
                        <div class="py-4">
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped bg-warning" role="progressbar"
                                     style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                </div>
                            </div>
                            <p class="card-text">People liked shooter</p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>

    <div class="row">
        <div class="col-4">
            <section id="recently-commented">
                <div class="card">
                    <div class="card-header">
                        Latest comments
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="row g-0">
                                <div class="col">
                                    <div class="card-body">
                                        <h6 class="card-title">Tetris</h6>
                                        <p class="card-text">The classic old times
                                            <small class="text-muted">Added 3 days ago
                                            </small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="row g-0">
                                <div class="col">
                                    <div class="card-body">
                                        <h6 class="card-title">Tetris</h6>
                                        <p class="card-text">The classic old times
                                            <small class="text-muted">Added 3 days ago
                                            </small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="row g-0">
                                <div class="col">
                                    <div class="card-body">
                                        <h6 class="card-title">Tetris</h6>
                                        <p class="card-text">The classic old times
                                            <small class="text-muted">Added 3 days ago
                                            </small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>

        <div class="col-5">
            <section id="notes-form">
                <div class="card">
                    <div class="card-header">
                        Write a note to Players
                    </div>
                    <div class="card-body px-4">
                        <form>
                            <div class="mb-3">
                                <label class="form-label">Your Note</label>
                                <textarea rows=7 class="form-control"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </form>
                    </div>
                </div>
            </section>
        </div>

        <div class="col">
            <section id="active-user">
                <div class="card">
                    <div class="card-header">
                        Most Active User
                    </div>
                    <div class="card-body text-center">
                        <div class="img-container mb-4">
                            <img src="" alt="User" class="card-img-top"/>
                        </div>
                        <h6 class="card-title">John Doe</h6>
                        <p class="card-text">Commented<span class="badge text-dark">187
                                    </span>times</p>
                        <p class="card-text">Posted<span class="badge text-dark">18
                                    </span>times</p>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>

<div style="position:fixed; bottom:0; right:0; font-weight:bold;">
    (c) Copyright 2021 - gogD Solutions
</div>
</body>

</html>
