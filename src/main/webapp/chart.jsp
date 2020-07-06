<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tripti
  Date: 28/06/20
  Time: 5:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Departmental Report</title>
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
<div id="container" style="height: 400px;"></div>



<p>Details of the Course with the best score in the ${dname}</p>

<table>
    <thead>
    <tr>
        <th>Course name</th>
        <th>Total Score</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="r" items="${result}">
        <tr>
            <td>${r.bestcourse}</td>
            <td>${r.totalscore}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/chart.js" id = "temp" val = ${deptId} ></script>
</body>
</html>
