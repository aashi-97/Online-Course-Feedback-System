<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Aryan
  Date: 24-05-2020
  Time: 02:27
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/home.css" rel="stylesheet">
<%--    <link href="css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link href="css/style.css" rel="stylesheet">--%>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image: url("../img/home.png");
        }

        .navbar {
            overflow: hidden;
            background-color: black;
            border-radius: 8px;
        }

        .navbar a {
            float: left;
            font-size: 20px;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
        }

        .dropdown {
            float: right;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            font-size: 20px;
            border: none;
            outline: none;
            color: white;
            padding: 14px 16px;
            background-color: inherit;
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
        }

        .navbar a:hover, .dropdown:hover .dropbtn {
            background-color: skyblue;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 95px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
    <title>Home Page</title>
</head>
<body>



<div class="navbar">
    <a href="home.jsp">Home</a>
    <a href="about.jsp">About</a>
    <a href="register.jsp">Sign Up</a>
    <div class="dropdown">
        <button class="dropbtn">Login
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="login.jsp">Student</a>
            <a href="adminlogin.jsp">Admin</a>
        </div>
    </div>
</div>

        <c:if test="${not empty success}">
            <div class="alert alert-success">
                <h3 style="color: #015798;">${success}</h3>
                <c:remove var="success"/>
            </div>
        </c:if>


       <div class="title">
           <h1 style="font-color: black;font-size: 50px;">COURSE FEEDBACK and ANALYSIS SYSTEM</h1>
       </div>
</body>
</html>

