<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <title>Student Page</title>
    <style>
        *,*:before,*:after{
            box-sizing:border-box;
            margin:0;
            padding:0;
        }

        html,body{
            width:100%;
            height:100%;
            font-family:tahoma;
        }
    </style>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<% long id = Long.parseLong(request.getParameter("id")); %>

    <div class="menu">
        <ul>
            <li>
          <span onmouseenter="hoverEnter(0)">
            <i class="fa fa-laptop"></i>
          </span>
            </li>
            <li>
          <span onmouseenter="hoverEnter(1)">
            <i class="fa fa-edit"></i>
          </span>
            </li>
            <li>
          <span onmouseenter="hoverEnter(2)">
            <i class="fa fa-home"></i>
          </span>
            </li>
            <span class="goo-index" id="goo-index"></span>
        </ul>
    </div>

    <div class="content-wrapper">
        <div id="screen_0" class="screen visible">
            <h2>Students' Feedback Form</h2>
            <%--            <a href="/feedbackform.jsp?id=<%=id%>" action = "feedbackform.jsp">click here to give feedback</a>--%>
            <form action="/fillform/<%=id%>" method="get">
                <button>Click here to give feedback</button>
            </form>
        </div>

        <div id="screen_1" class="screen">
            <div class="container text-center">
                <h3>Update Password</h3>
                <hr>
                <form class="form-horizontal" method="POST" action="/student/updatepassword/<%=id%>">
                    <form :hidden path="id"/>
                    <div class="form-group">
                        <label class="control-label col-md-3">Student Name</label>
                        <div class="col-md-7">
                            <input type="text" class="form-control" name="username"
                                   value="${username}" placeholder="${username}" disabled/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3">Roll Number</label>
                        <div class="col-md-7">
                            <input type="text" class="form-control" name="rollnumber"
                                   value="${rollnumber }" placeholder="${rollnumber}" disabled />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3">Password</label>
                        <div class="col-md-7">
                            <input type="password" class="form-control" name="password"
                                   value="${password }" placeholder="${password}" />
                        </div>
                    </div>
                    <div class="form-group ">
                        <input type="submit" class="btn btn-primary" value="Update" />
                    </div>
                </form>
            </div>
        </div>

        <div id="screen_2" class="screen">
            <h2>Log out!</h2>
            <p>Thank You, for giving your valuable feedback.We will look forward to your feedback.</p>
            <a href="/">Exit</a>
        </div>

    </div>
    <script src="js/studentdashboard.js" type="text/javascript" ></script>
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
