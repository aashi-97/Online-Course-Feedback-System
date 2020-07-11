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
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/addcourse.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>


<div class="container text-center">
    <h3>Add Course Details</h3>
    <hr class="one">
    <form class="form-horizontal" method="POST" action="/course/addcourse">
        <form :hidden path="id"/>
        <div class="form-group">
            <label class="control-label col-md-3">Course Name</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="coursename" placeholder="name"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Course Id</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="subjectid" placeholder="abc-123"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Faculty Name</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="facultyname" placeholder="name"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-3">Contact Number</label>
            <div class="col-md-7">
                <input type="number" class="form-control" name="contactnumber" placeholder="" minlength="10" maxlength="10" pattern="[1-9]{1}[0-9]{9}"/><br>
                <div class="two">
                <small class="form-text text-muted " >Please ensure its 10 digit number</small>
                </div>
                </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-3">Department</label>
            <div class="col-md-7">
                <select class="form-control" name = "department" >
                    <option value = "${deptname}">${deptname}</option>
                </select>
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