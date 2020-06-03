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
    <a href="home">Home</a>
    <a href="about">About</a>
    <div class="logout">
        <a href="/logout" class="logoutbtn">Logout</a>
    </div>
</div>

<a href="/addcourse">Add Course</a>
<a href="/show-courses"> Show All Courses</a>
<a href ="/show-users">Registered students</a>
</body>
</html>
