<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tripti
  Date: 02/07/20
  Time: 11:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Response</title>
    <link href="css/printresponse.css" rel="stylesheet">
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

<% int count1=0;
    int count2=0;
    int count3=0;
    int count4=0;
    int count5=0;
%>
<div class="container">
<h2><u>Students' Feedback Form for Teaching</u></h2>
<div class="form">
<p><i>Name of the Department:&nbsp;<b>${dname}</b></i></p>
<p><i>Session:&nbsp;<b>${session}</b>&emsp;&emsp;
    Class:&nbsp;<b>${cclass}</b>&emsp;&emsp;
    Semester:&nbsp;<b>${sem}</b></i></p>
<p><i>Name of the course(with course code):&nbsp;<b>${cname}</b></i></p>
<p><i>Name of the Teacher:&nbsp;<b>${tname}</b>
    </span> </i></p>
<p><i>Total number of Lectures delivered by the Teacher in the Semester:&nbsp;<b>${totallec}</b></i></p>
<p><i>Number of Lectures attended by the Student filling the form with percentage:&nbsp;<b>${lecattended}</b></i></p>
</div>
    <br>
<table align="left">
    <tr>
        <th>Sr.No.</th>
        <th>Description of the item/Questions</th>
        <th colspan="5">Rating Scale</th>
    </tr>
    <tr>
        <td>1</td>
        <td>Availability of Lecture Plan in the beginning of the Semester</td>
        <c:choose>
            <c:when test="${ques1==1}">
                <td>${ques1}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques1 == 2}">

                <td></td>
                <td>${ques1}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques1 == 3}">
                <td></td>
                <td></td>
                <td>${ques1}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques1 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques1}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques1}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>2</td>
        <td>Coverage of the Syllabus</td>
        <c:choose>
            <c:when test="${ques2==1}">
                <td>${ques2}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques2 == 2}">
                <td></td>
                <td>${ques2}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques2 == 3}">
                <td></td>
                <td></td>
                <td>${ques2}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques2 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques2}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques2}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>3</td>
        <td>Regularity of the Teacher</td>
        <c:choose>
            <c:when test="${ques3==1}">
                <td>${ques3}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques3 == 2}">
                <td></td>
                <td>${ques3}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques3 == 3}">
                <td></td>
                <td></td>
                <td>${ques3}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques3 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques3}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques3}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>4</td>
        <td>Knowledge of the Teacher in the Subject</td>
        <c:choose>
            <c:when test="${ques4==1}">
                <td>${ques4}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques4 == 2}">
                <td></td>
                <td>${ques4}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques4 == 3}">
                <td></td>
                <td></td>
                <td>${ques4}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques4 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques4}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques4}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>5</td>
        <td>Ability of the Teacher to teach and respond to Queries</td>
        <c:choose>
            <c:when test="${ques5==1}">
                <td>${ques5}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques5 == 2}">
                <td></td>
                <td>${ques5}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques5 == 3}">
                <td></td>
                <td></td>
                <td>${ques5}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques5 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques5}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques5}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>6</td>
        <td>Organization of the Lecture</td>
        <c:choose>
            <c:when test="${ques6==1}">
                <td>${ques6}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques6 == 2}">
                <td></td>
                <td>${ques6}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques6 == 3}">
                <td></td>
                <td></td>
                <td>${ques6}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques6 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques6}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques6}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>7</td>
        <td>Audibility of the Teacher's voice during the Class</td>
        <c:choose>
            <c:when test="${ques7==1}">
                <td>${ques7}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques7 == 2}">
                <td></td>
                <td>${ques7}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques7 == 3}">
                <td></td>
                <td></td>
                <td>${ques7}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques7 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques7}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques7}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>8</td>
        <td>Utilization of Blackboard and other Teaching Aids</td>
        <c:choose>
            <c:when test="${ques8==1}">
                <td>${ques8}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques8 == 2}">
                <td></td>
                <td>${ques8}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques8 == 3}">
                <td></td>
                <td></td>
                <td>${ques8}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques8 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques8}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques8}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>9</td>
        <td>Summarizing Key Points by the Teacher at end of the class</td>
        <c:choose>
            <c:when test="${ques9==1}">
                <td>${ques9}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques9 == 2}">
                <td></td>
                <td>${ques9}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques9 == 3}">
                <td></td>
                <td></td>
                <td>${ques9}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques9 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques9}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques9}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>10</td>
        <td>Explaining concepts, Giving solution of problems/numericals</td>
        <c:choose>
            <c:when test="${ques10==1}">
                <td>${ques10}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques10 == 2}">
                <td></td>
                <td>${ques10}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques10 == 3}">
                <td></td>
                <td></td>
                <td>${ques10}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques10 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques10}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques10}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>11</td>
        <td>Respect and understanding of the Teacher for the students</td>
        <c:choose>
            <c:when test="${ques11==1}">
                <td>${ques11}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques11 == 2}">
                <td></td>
                <td>${ques11}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques11 == 3}">
                <td></td>
                <td></td>
                <td>${ques11}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques11 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques11}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques11}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>12</td>
        <td>Encouragement of the Teacher for the students to ask questions</td>
        <c:choose>
            <c:when test="${ques12==1}">
                <td>${ques12}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques12 == 2}">
                <td></td>
                <td>${ques12}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques12 == 3}">
                <td></td>
                <td></td>
                <td>${ques12}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques12 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques12}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques12}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>13</td>
        <td>Tolerance of the Teacher to different opinions and arguments</td>
        <c:choose>
            <c:when test="${ques13==1}">
                <td>${ques13}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques13 == 2}">
                <td></td>
                <td>${ques13}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques13 == 3}">
                <td></td>
                <td></td>
                <td>${ques13}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques13 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques13}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques13}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>14</td>
        <td>Availability of the Teacher beyond the Class hours</td>
        <c:choose>
            <c:when test="${ques14==1}">
                <td>${ques14}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques14 == 2}">
                <td></td>
                <td>${ques14}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques14 == 3}">
                <td></td>
                <td></td>
                <td>${ques14}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques14 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques14}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques14}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>15</td>
        <td>Ability to adjust the pace as per the student's level of understanding</td>
        <c:choose>
            <c:when test="${ques15==1}">
                <td>${ques15}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques15 == 2}">
                <td></td>
                <td>${ques15}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques15 == 3}">
                <td></td>
                <td></td>
                <td>${ques15}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques15 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques15}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques15}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>16</td>
        <td>Regular assignments, tutorials and their timely evaluation</td>
        <c:choose>
            <c:when test="${ques16==1}">
                <td>${ques16}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques16 == 2}">
                <td></td>
                <td>${ques16}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques16 == 3}">
                <td></td>
                <td></td>
                <td>${ques16}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques16 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques16}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques16}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>17</td>
        <td>Coverage of the practical/experimental aspects of the course</td>
        <c:choose>
            <c:when test="${ques17==1}">
                <td>${ques17}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques17 == 2}">
                <td></td>
                <td>${ques17}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques17 == 3}">
                <td></td>
                <td></td>
                <td>${ques17}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques17 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques17}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques17}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>18</td>
        <td>Guidelines and tips on Pattern of the Question Papers</td>
        <c:choose>
            <c:when test="${ques18==1}">
                <td>${ques18}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques18 == 2}">
                <td></td>
                <td>${ques18}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques18 == 3}">
                <td></td>
                <td></td>
                <td>${ques18}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques18 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques18}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques18}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>19</td>
        <td>Level of Mid Semester and End Semester Exams</td>
        <c:choose>
            <c:when test="${ques19==1}">
                <td>${ques19}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques19 == 2}">
                <td></td>
                <td>${ques19}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques19 == 3}">
                <td></td>
                <td></td>
                <td>${ques19}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques19 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques19}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques19}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>20</td>
        <td>Timely evaluation and showing of answer sheets of exams</td>
        <c:choose>
            <c:when test="${ques20==1}">
                <td>${ques20}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques20 == 2}">
                <td></td>
                <td>${ques20}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques20 == 3}">
                <td></td>
                <td></td>
                <td>${ques20}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques20 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques20}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques20}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>21</td>
        <td>Satisfaction with the contents of the course syllabus</td>
        <c:choose>
            <c:when test="${ques21==1}">
                <td>${ques21}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques21 == 2}">
                <td></td>
                <td>${ques21}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques21 == 3}">
                <td></td>
                <td></td>
                <td>${ques21}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques21 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques21}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques21}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>22</td>
        <td>Suitability and Relevance of the course with the Program</td>
        <c:choose>
            <c:when test="${ques22==1}">
                <td>${ques22}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques22 == 2}">
                <td></td>
                <td>${ques22}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques22 == 3}">
                <td></td>
                <td></td>
                <td>${ques22}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques22 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques22}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques22}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>23</td>
        <td>Satisfaction level for the evaluation of end semester exam</td>
        <c:choose>
            <c:when test="${ques23==1}">
                <td>${ques23}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques23 == 2}">
                <td></td>
                <td>${ques23}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques23 == 3}">
                <td></td>
                <td></td>
                <td>${ques23}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques23 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques23}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques23}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>24</td>
        <td>Fairness of evaluation of exam answer copies</td>
        <c:choose>
            <c:when test="${ques24==1}">
                <td>${ques24}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques24 == 2}">
                <td></td>
                <td>${ques24}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques24 == 3}">
                <td></td>
                <td></td>
                <td>${ques24}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques24 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques24}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques24}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td>25</td>
        <td>Overall suitability of the Teacher to teach this course</td>
        <c:choose>
            <c:when test="${ques25==1}">
                <td>${ques25}<% count1=count1+1; %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques25 == 2}">
                <td></td>
                <td>${ques25}<% count2=count2+1; %></td>
                <td></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques25 == 3}">
                <td></td>
                <td></td>
                <td>${ques25}<% count3=count3+1; %></td>
                <td></td>
                <td></td>
            </c:when>
            <c:when test="${ques25 == 4}">
                <td></td>
                <td></td>
                <td></td>
                <td>${ques25}<% count4=count4+1; %></td>
                <td></td>
            </c:when>
            <c:otherwise>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>${ques25}<% count5=count5+1; %></td>
            </c:otherwise>
        </c:choose>
    </tr>
    <tr>
        <td></td>
        <td><b>Total of Ratings(For office use only)</b></td>
        <td><%= count1*1%></td>
        <td><%= count2*2%></td>
        <td><%= count3*3%></td>
        <td><%= count4*4%></td>
        <td><%= count5*5%></td>
    </tr>
</table>
<div class="form">
<input type="submit" value="Print" style="font-size: 18px" onClick="window.print()"/>
</div>
</div>
</body>
</html>
