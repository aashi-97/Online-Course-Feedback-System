<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tripti
  Date: 01/07/20
  Time: 11:08 PM
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
    <title>All Responses</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>

<div class="container text-center" id="tasksDiv">
    <h3>All Results</h3>
    <hr>
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th>userId</th>
                <th>username</th>
                <th>rollnumber</th>
                <th>Email id</th>
                <th>password</th>
                <th>ResultId</th>
                <th>Print Result</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach var="r" items="${resultList}">
                <tr>
                    <td>${r.user.userId}</td>
                    <td>${r.user.username}</td>
                    <td>${r.user.rollnumber}</td>
                    <td>${r.user.email}</td>
                    <td>${r.user.password}</td>
                    <td>${r.resultId}</td>
                    <td><a href="/results/viewresultbyResultId/${r.resultId}">View Response</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>
