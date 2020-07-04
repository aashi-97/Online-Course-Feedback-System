<%--
  Created by IntelliJ IDEA.
  User: tripti
  Date: 29/06/20
  Time: 7:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="container text-center" id="tasksDiv">
    <h3>All Courses Average</h3>
    <hr>
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th>CourseName</th>
                <th>Average</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="re" items="${resultList}">
                <tr>
                    <td>${re.cname}</td>
                    <td>${c.avg}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
