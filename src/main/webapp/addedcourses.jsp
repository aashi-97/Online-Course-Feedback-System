<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="com.example.demo.model.Course" %>
<%@ page import="org.springframework.http.ResponseEntity" %>
<%@ page import="com.example.demo.controller.CourseController" %>
<%@ page import="org.springframework.web.bind.annotation.RequestMapping" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <title>Added Courses</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/addedcourses.css" rel="stylesheet">
</head>
<body>

<div class="container text-center" id="tasksDiv">
    <h3>All Courses</h3>
    <hr class="one">
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th>Id</th>
                <th>CourseName</th>
                <th>CourseId</th>
                <th>FacultyName</th>
                <th>ContactNumber</th>
                <th>Department</th>
                <th>Delete</th>
                <th>Edit</th>
                <th>View Responses</th>
                <th>Report</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="c" items="${courseList}">
                <tr>
                    <td>${c.courseId}</td>
                    <td>${c.coursename}</td>
                    <td>${c.subjectid}</td>
                    <td>${c.facultyname}</td>
                    <td>${c.contactnumber}</td>
                    <td>${c.department}</td>
                    <td><a href="/course/delete/${c.courseId}"><i class="icon-trash"></i></a></td>
                    <td><a href="/course/viewcoursebyid/${c.courseId}"><i class="icon-pencil"></i></a></td>
                    <td><a href="/course/viewresultbyCourseId/${c.courseId}" style="color:darkmagenta">Responses</a></td>
                    <td><a href="/course/viewreport/${c.courseId}" style="color:darkmagenta">Report</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
