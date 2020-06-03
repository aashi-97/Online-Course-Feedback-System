<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <title>Added Courses</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
</head>
<body>
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
                <th>ContactNumber</th>
                <th>Department</th>
                <th>UniversityName</th>
                <th>Delete</th>
                <th>Edit</th>
                <th>Feedback Results</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="course" items="${courses }">
                <tr>
                    <td>${course.id}</td>
                    <td>${course.coursename}</td>
                    <td>${course.courseid}</td>
                    <td>${course.facultyname}</td>
                    <td>${course.contactnumber}</td>
                    <td>${course.department}</td>
                    <td>${course.university}</td>
                    <td><a href="/delete-course?id=${course.id }"><i class="icon-trash"></i></a></td>
                    <td><a href="/edit-course?id=${course.id }"><i class="icon-pencil"></i></a></td>
                    <td><a href="/feedback-result?id=${course.id }">Feedback Result</a></td>
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
