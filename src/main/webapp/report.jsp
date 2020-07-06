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
    <style>
        table,th,td{
            border : 1px solid black;
            border-collapse: collapse;
        }
        th{
            padding: 4px;
        }
        td{
            padding: 3px;
        }
    </style>
</head>
<body>

<h2><u>Analysis Report</u></h2>

<p>Details of the Course having best score in the university</p>

<table>
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
</table>


<p>Details of the Department having overall highest score aggregated over all the courses</p>

<table>
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
</table>

<p>Details of the Department having overall lowest score aggregated over all the courses</p>

<table>
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

</body>
</html>
