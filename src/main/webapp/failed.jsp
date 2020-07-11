<%--
  Created by IntelliJ IDEA.
  User: tripti
  Date: 19/06/20
  Time: 2:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Failed</title>
    <link href="css/failed.css" rel="stylesheet">
    <link href="css/all.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row text-center">
        <div class="col-sm-6 col-sm-offset-3">
            <div class="three">
                <p> <i class="far fa-times-circle"></i> Failed to Add</p>
            </div>
            <div class="one">
            <p style=" font-family: Arial">Sorry, Something went wrong.</p>
            </div>
            <div class="two">
            <p style=" font-family: Arial">${contactnumber} ${subjectid} already exists.</p>
            </div>
            <a href="addcourse.jsp" action="addcourse.jsp" class="btn btn-primary" style="font-size: large"> Try Again! </a>
            <br><br>
        </div>

    </div>
</div>
</body>
</html>
