<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <title>Log in</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>

<div class="container text-center">
    <h3>User Login</h3>
    <hr>
    <form class="form-horizontal" method="get" action="/login/verifyuser">
        <c:if test="${not empty error}">
            <div class="alert alert-danger">
                <h3>${error}</h3>
                <c:remove var="error"/>
            </div>
        </c:if>
        <div class="form-group">
            <label class="control-label col-md-3">Roll Number</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="rollnumber" placeholder="123AB"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Password</label>
            <div class="col-md-7">
                <input type="password" class="form-control" name="password" placeholder="pass12"/>
            </div>
        </div>
        <div class="form-group ">
            <input type="submit" class="btn btn-primary" value="Login" />
        </div>
    </form>
</div>


<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
