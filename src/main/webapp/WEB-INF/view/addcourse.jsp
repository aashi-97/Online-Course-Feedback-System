<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <title>Add Course</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>


<div class="container text-center">
    <h3>Add Course Details</h3>
    <hr>
    <form class="form-horizontal" method="POST" action="save-course">
        <input type="hidden" name="id" value="${course.id }" />
        <div class="form-group">
            <label class="control-label col-md-3">Course Name</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="coursename"
                       value="${course.coursename }" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Course Id</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="courseid"
                       value="${course.courseid}" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Faculty Name</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="facultyname"
                       value="${course.facultyname }" />
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-3">Contact Number</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="contactnumber"
                       value="${course.contactnumber }" />
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-3">Department</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="department"
                       value="${course.department }" />
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-3">University</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="university"
                       value="${course.university }" />
            </div>
        </div>
        <div class="form-group ">
            <input type="submit" class="btn btn-primary" value="Save" />
        </div>
    </form>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>