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

<a href="addcourse.jsp">Add Course</a>
<a href="/course/viewcourse"> Show All Courses</a>
<%--<a href ="/results/viewcourseAverage">Registered students</a>--%>
<a href="chart.jsp">Overall Average</a>
<a href="/overall-report">Overall Analysis Report</a>

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
                <th>Report</th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Computer Science and Information Technology</td>
                    <td><a href=""> Courses</a></td>
                    <td><a href="">Report</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Mechanical Engineering</td>
                    <td><a href=""> Courses</a></td>
                    <td><a href="">Report</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Civil Engineering</td>
                    <td><a href=""> Courses</a></td>
                    <td><a href="">Report</a></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Electronics</td>
                    <td><a href=""> Courses</a></td>
                    <td><a href="">Report</a></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Electrical</td>
                    <td><a href=""> Courses</a></td>
                    <td><a href="">Report</a></td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>Paint Technology</td>
                    <td><a href=""> Courses</a></td>
                    <td><a href="">Report</a></td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>Plastic Technolgoy</td>
                    <td><a href=""> Courses</a></td>
                    <td><a href="">Report</a></td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>Leather Technology</td>
                    <td><a href=""> Courses</a></td>
                    <td><a href="">Report</a></td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>Food Technology</td>
                    <td><a href=""> Courses</a></td>
                    <td><a href="">Report</a></td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>Bio-Chemical</td>
                    <td><a href=""> Courses</a></td>
                    <td><a href="">Report</a></td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>Chemical Engineering</td>
                    <td><a href=""> Courses</a></td>
                    <td><a href="">Report</a></td>
                </tr>
                <tr>
                    <td>12</td>
                    <td>Oil Technology</td>
                    <td><a href=""> Courses</a></td>
                    <td><a href="">Report</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
