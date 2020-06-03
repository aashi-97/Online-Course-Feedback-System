<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Student Page</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
</head>
<body>
    Hey Student!
    <div class="navbar">
        <a href="home">Home</a>
        <a href="about">About</a>
        <div class="logout">
            <a href="/logout" class="logoutbtn">Logout</a>
        </div>
    </div>
    <div class="container text-center" id="tasksDiv">
    <h3>All Courses</h3>
    <hr>
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th>Id</th>
                <th>CourseName</th>
                <th>CourseId</th>
                <th>FacultyName</th>
            </tr>
            </thead>
            <tbody>
<c:forEach var="course" items="${feedbackcourses }">
    <tr>
    <td>${course.id}</td>
        <td><a href="/feedback-form">${course.coursename}</a></td>
    <td>${course.courseid}</td>
    <td>${course.facultyname}</td>
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
