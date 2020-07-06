<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tripti
  Date: 28/05/20
  Time: 7:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        .navbar {
            overflow: hidden;
            background-color: #333;
        }

        .navbar a {
            float: left;
            font-size: 16px;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .logout {
            float: right;
            overflow: hidden;
        }
        .logout .logoutbtn {
            font-size: 16px;
            border: none;
            outline: none;
            color: white;
            padding: 14px 16px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }
    </style>
    <title>Admin</title>

</head>
<body>
<h1> hey admin !</h1>
<div class="navbar">
    <div class="logout">
        <a href="home.jsp" class="logoutbtn">Logout</a>
    </div>
</div>



<%--<a href="/course/viewcourse"> Show All Courses</a>--%>

<%--<a href="chart.jsp">Overall Average</a>--%>

<a href="/overall-report">Overall Feedback Analysis Report</a>

<div class="container text-center" id="tasksDiv">
    <h3>All Departments</h3>
    <hr>
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th>Id</th>
                <th>Departments</th>
                <th>Associated Courses</th>
                <th>Add Course</th>
                <th>Report</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="d" items="${departments}">
                <tr>
                    <td>${d.deptId}</td>
                    <td>${d.deptname}</td>
                    <td><a href="/course/viewcoursebydept/${d.deptId}"> Courses</a></td>
                    <td><a href="/course/dept/addcourse/${d.deptId}">Add Course</a></td>
                    <td><a href="/department-report/${d.deptId}">Report</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
