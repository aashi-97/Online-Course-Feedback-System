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
</head>
<body>

<div class="container">
    <div class="row text-center">
        <div class="col-sm-6 col-sm-offset-3">
            <br><br> <h2 style="color: darksalmon">Failed to Add</h2>
            <br>
            <p style="color: darksalmon; font-size: large; font-family: Arial">Something went wrong.</p><br><br>
            <p style="color: darksalmon; font-size: large; font-family: Arial">${contactnumber} ${subjectid} already exists.</p><br><br>
            <a href="addcourse.jsp" action="addcourse.jsp" class="btn btn-primary" style="font-size: medium"> Try Again! </a>
            <br><br>
        </div>

    </div>
</div>
</body>
</html>
