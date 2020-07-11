<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tripti
  Date: 30/06/20
  Time: 9:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Report</title>
    <link href="css/report.css" rel="stylesheet">
    <link href="css/all.min.css" rel="stylesheet">

</head>
<body>

<h3 style="color: #015798">Analysis Report</h3>
<hr class="one">
<br>
<div class="text">
<p><i class="fas fa-hand-point-right"></i>    Details of the Course having best score in the university</p>
</div>

<div class="table-responsive">
    <table class="table table-striped table-bordered">

    <thead>
    <tr>
        <th>Best courses in the university</th>
        <th>Total Score</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="r2" items="${result2}">
        <tr>
            <td>${r2.bestcoursename}</td>
            <td>${r2.univ_best_score}</td>
        </tr>
    </c:forEach>
    </tbody>
</table><br><br>
</div>

<div class="text">
<p><i class="fas fa-hand-point-right"></i>    Details of the Department having overall highest score aggregated over all the courses</p>
</div>

<div class="table-responsive">
    <table class="table table-striped table-bordered">
    <thead>
    <tr>
        <th>Department</th>
        <th>Score</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach var="r" items="${result}">
            <tr>
                <td>${r.bestdeptname}</td>
                <td>${r.dept_highest_score}</td>
            </tr>
        </c:forEach>
            </tbody>
</table><br><br>
</div>

<div class="text">
<p><i class="fas fa-hand-point-right"></i>    Details of the Department having overall lowest score aggregated over all the courses</p>
</div>

<div class="table-responsive">
    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>Department</th>
            <th>Score</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="r1" items="${result1}">
            <tr>
                <td>${r1.deptname}</td>
                <td>${r1.dept_lowest_score}</td>
            </tr>
        </c:forEach>
        </tbody>
</table>
</div>
</body>
</html>
