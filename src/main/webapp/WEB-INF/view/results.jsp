<%--
  Created by IntelliJ IDEA.
  User: Aryan
  Date: 02-07-2020
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Results Page</title>

    <style>
        table,th{
            border : 1px solid black;
            border-collapse: collapse;
        }
        th{
            padding : 4px;
        }
    </style>
</head>
<body>
<h2><u>Analysis Report</u></h2>
  <p>Overall score of each course for every Department</p>

<table>
    <tr>
        <th>Department</th>
        <th>Course</th>
        <th>Score</th>
    </tr>
</table>

<p>Details of Course/Teacher with best score in the Department</p>

<table>
    <tr>
        <th>Department</th>
        <th>Course</th>
        <th>Teacher</th>
        <th>Score</th>
    </tr>
</table>

<p>Details of the Course/Teacher with the best score in the University</p>

<table>
    <tr>
        <th>Course</th>
        <th>Teacher</th>
        <th>Score</th>
    </tr>
</table>

<p>Details of the Department having overall highest score aggregated over all the courses</p>

<table>
    <tr>
        <th>Department</th>
        <th>Score</th>
    </tr>
</table>

<p>Details of the Department having overall lowest score aggregated over all the courses</p>

<table>
    <tr>
        <th>Department</th>
        <th>Score</th>
    </tr>
</table>

</body>
</html>
