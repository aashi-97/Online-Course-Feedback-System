<!DOCTYPE html >
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tripti
  Date: 30/05/20
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<%--    <script--%>
<%--              src="https://code.jquery.com/jquery-3.4.1.min.js"--%>
<%--              integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="--%>
<%--              crossorigin="anonymous"></script>--%>
<%--    <script type="text/javascript"--%>
<%--                src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>--%>
    <title>Login</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
</head>
<body>
<div class="container text-center">
    <h3>Admin Login</h3>
    <hr>
    <form class="form-horizontal" method="POST" action="/login-admin">
        <c:if test="${not empty error }">
            <div class= "alert alert-danger">
                <c:out value="${error }"></c:out>
            </div>
        </c:if>
        <div class="form-group">
            <label class="control-label col-md-3">Email</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="email"
                       value="${admin.email }" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">Password</label>
            <div class="col-md-7">
                <input type="password" class="form-control" name="password"
                       value="${admin.password }" />
            </div>
        </div>
        <div class="form-group ">
            <input type="submit" class="btn btn-primary" value="Login" />
        </div>
    </form>
</div>


<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>


</body>
<%--<script type="text/javascript">--%>

<%--    $(document).ready(function() {--%>
<%--        $("#loginForm").validate({--%>
<%--            rules: {--%>
<%--                email: {--%>
<%--                    required: true,--%>
<%--                    email: true--%>
<%--                },--%>

<%--                password: "required",--%>
<%--            },--%>

<%--            messages: {--%>
<%--                email: {--%>
<%--                    required: "Please enter email",--%>
<%--                    email: "Please enter a valid email address"--%>
<%--                },--%>

<%--                password: "Please enter password"--%>
<%--            }--%>
<%--        });--%>

<%--    });--%>
<%--</script>--%>
</html>
