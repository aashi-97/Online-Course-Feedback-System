<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <title>Registered Students</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
</head>
<body>
<div class="container text-center" id="tasksDiv">
    <h3>All Users</h3>
    <hr>
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th>Id</th>
                <th>UserName</th>
                <th>rollnumber</th>
                <th>Password</th>
                <th>Delete</th>
                <th>Edit</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${users }">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.rollnumber}</td>
                    <td>${user.password}</td>
                    <td><a href="/delete-user?id=${user.id }"><i class="icon-trash"></i></a></td>
                    <td><a href="/edit-user?id=${user.id }"><i class="icon-pencil"></i></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>
