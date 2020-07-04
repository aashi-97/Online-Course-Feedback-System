<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <title>Student Registration</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    <div class="container text-center">
        <h3>New Registration</h3>
        <hr>
        <form class="form-horizontal" method="POST" action="/student/adduser">
            <form :hidden path="id"/>
            <div class="form-group">
                <label class="control-label col-md-3">Student name</label>
                <div class="col-md-7">
                    <input type="text" class="form-control" name="username"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">Roll Number</label>
                <div class="col-md-7">
                    <input type="text" class="form-control" name="rollnumber"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">Programme</label>
                <div class="col-md-7">
                    <select class="form-control" name="programme">
                        <option value="B.Tech">B.Tech</option>
                        <option value="MCA">MCA</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">Department</label>
                <div class="col-md-7">
                    <select class="form-control" name = "department" >
                        <option value = "CS">Cs</option>
                        <option value = "Mech">Mech</option>
                        <option value = "civil">civil</option>
                        <option value = "electronics">Electronics</option>
                        <option value = "chemical eng">chemical eng</option>
                        <option value = "chemical tech">chemical tech</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">Email</label>
                <div class="col-md-7">
                    <input type="text" class="form-control" name="email"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">Semester</label>
                <div class="col-md-7">
                    <input type="text" class="form-control" name="semester"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">Password</label>
                <div class="col-md-7">
                    <input type="password" class="form-control" name="password"/>
                </div>
            </div>
            <div class="form-group ">
                <input type="submit" class="btn btn-primary" value="Register" />
            </div>
        </form>
    </div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>