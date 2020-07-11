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
    <link href="css/chart.css" rel="stylesheet">
    <link href="css/all.min.css" rel="stylesheet">

</head>
<body>
<div id="container" style="height: 400px;"></div>



<p><i class="fas fa-hand-point-right"></i>    Details of the Course with the best score in the <b>${dname}</b></p>

<div class="table-responsive">
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
</div>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/chart.js" id = "temp" val = ${deptId} ></script>
</body>
</html>
