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
    <title>Update-Course</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/updatecourse.css" rel="stylesheet">
</head>
<body>
<% long id = Long.parseLong(request.getParameter("id")); %>

<div class="container text-center">
    <h3>Update Course</h3>
    <hr>
    <form class="form-horizontal" method="POST" action="/course/updatecourse/<%=id%>">
        <form :hidden path="id"/>
        <div class="form-group">
            <label class="control-label col-md-3">Course Name</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="coursename"
                       value="${coursename}"  placeholder="${coursename}"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Course Id</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="subjectid"
                       value="${subjectid}" placeholder="${subjectid}" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Faculty Name</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="facultyname"
                       value="${facultyname}" placeholder="${facultyname}" />
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-3">Contact Number</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="contactnumber"
                       value="${contactnumber }"  placeholder="${contactnumber}"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-3">Department</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="department"
                       value="${department }" placeholder="${department}" />
            </div>
        </div>

        <div class="form-group ">
            <input type="submit" class="btn btn-primary" value="Save" />
        </div>
    </form>
</div>


<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
