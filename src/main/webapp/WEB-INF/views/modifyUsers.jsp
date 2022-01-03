<%-- 
    Document   : modifyUsers
    Created on : Dec 13, 2021, 9:38:27 PM
    Author     : Pantelis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
              integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="/css/styles.css"/>
        <title>Modify Users</title>
    </head>

    <body>
        <%@ include file="nav.jsp" %>

        <div class="main col-11 container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Users</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#deleteUserModal" class="btn btn-danger" data-bs-toggle="modal"><i
                                    class="material-icons">&#xE15C;</i>Delete User</a>
                            <a href="#newUserModal" class="btn btn-success" data-bs-toggle="modal"><i
                                    class="material-icons">&#xe147;</i>Add New User</a>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll" onClick="toggle(this)">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>User ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Date of birth</th>
                            <th>e-mail</th>
                            <th>Username</th>
                            <th>Profile Picture</th>
                            <th>Registered</th>
                            <th>VIP</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${allUsers}" var="user">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="option[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${user.userId}</td>
                                <td>${user.firstName}</td>
                                <td>${user.lastName}</td>
                                <td>${user.dateOfBirth}</td>
                                <td>${user.email}</td>
                                <td>${user.username}</td>
                                <td>${user.profilePicture}</td>
                                <td>${user.registered}</td>
                                <td>${user.vip}</td>
                                <td>
                                    <a href="#editUserModal" onclick="editClick(${user.userId})" class="edit" data-bs-toggle="modal"><i class="material-icons"
                                                                                                                                        data-bs-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="#deleteUserModal" class="delete" data-bs-toggle="modal"><i class="material-icons"
                                                                                                        data-bs-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                            <!-- Delete Modal HTML -->
                        <div id="deleteUserModal" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form>
                                        <div class="modal-header">
                                            <h4 class="modal-title">Delete User</h4>
                                            <button type="button" class="close" data-bs-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <p>Are you sure you want to delete these Records?</p>
                                            <p class="text-danger"><small>This action cannot be undone.</small></p>
                                        </div>
                                        <div class="modal-footer">
                                            <input type="button" class="btn btn-default" data-bs-dismiss="modal" value="Cancel">
                                            <a href="/admin/deleteUser/${user.userId}"> 
                                                <input type="button" class="btn btn-danger" value="Delete">
                                            </a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    </tbody>
                </table>
                <!-- Edit Modal HTML -->
                <div id="editUserModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form:form method="Post" id="userSubmit">
                                <div class="modal-header">
                                    <h4 class="modal-title">Edit User / Modify User</h4>
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
                <div id="newUserModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form:form method="Post" onSubmit="registration(event)" action="addUser">
                                <div class="modal-header">
                                    <h4 class="modal-title">Add User</h4>
                                    <button type="button" class="close" data-bs-dismiss="modal" aria-hidden="true">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label>First Name</label>
                                        <input type="text" class="form-control" id="fNameEdit1" name="firstName" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Last Name</label>
                                        <input type="text" class="form-control" id="lNameEdit1" name="lastName" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Date Of Birth</label>
                                        <input type="date" class="form-control" id="dateOfBirthEdit1" name="dateOfBirth">
                                    </div>
                                    <div class="form-group">
                                        <label>E mail</label>
                                        <input type="text" class="form-control" id="emailEdit1" name="email" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="text" class="form-control" id="passwordEdit1" name="password">
                                    </div>
                                    <div class="form-group">
                                        <label>Username</label>
                                        <input type="text" class="form-control" id="usernameEdit1 " name="username" required>
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

                <div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>100</b> entries</div>
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="#" class="page-link">Previous</a></li>
                        <li class="page-item active"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div id="footer" class="fixed-bottom">
            (c) Copyright 2021 - gogD Solutions
        </div>

        <script language="JavaScript">function toggle(source) {
                checkboxes = document.getElementsByName('option[]');
                for (var i = 0, n = checkboxes.length; i < n; i++) {
                    checkboxes[i].checked = source.checked;
                }
            }
        </script>
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
            }</script>

        <script>
            function registration(event)
            {
                event.preventDefault()

                var fname = document.getElementById("fNameEdit").value;
                var lname = document.getElementById("lNameEdit").value;
                var dob = document.getElementById("dateOfBirthEdit").value;
                var email = document.getElementById("emailEdit").value;
                var pwd = document.getElementById("passwordEdit").value;
                var uname = document.getElementById("usernameEdit").value;
        </script>
    </body>

</html>