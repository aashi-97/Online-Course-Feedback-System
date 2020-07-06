<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: tripti
  Date: 02/07/20
  Time: 11:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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


<h>points which are poor, average, good for : ${cname}</h>

<table>
    <thead>
    <tr>
        <th>S.No.</th>
        <th>points</th>
        <th>poor</th>
        <th>average</th>
        <th>good</th>
    </tr>
    </thead>
    <c:forEach var="r" items="${result}">
        <tr>
        <c:choose>
            <c:when test="${r.q1>=1 and r.q1<1.8 } ">
                    <td>1</td>
                    <td>Availability of Lecture Plan in the beginning of the Semester</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
            </c:when>
            <c:when test="${r.q1>=1.8 and r.q1<2.6}">
                    <td>1</td>
                    <td>Availability of Lecture Plan in the beginning of the Semester</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
            </c:when>
            <c:when test="${r.q1>=2.6 and r.q1<3.4}">
                    <td>1</td>
                    <td>Availability of Lecture Plan in the beginning of the Semester</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
            </c:when>
        </c:choose>
        </tr>
        <tr>
        <c:choose>
            <c:when test="${r.q2>=1 and r.q2<1.8 } ">
                    <td>2</td>
                    <td>Coverage of the Syllabus</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
            </c:when>
            <c:when test="${r.q2>=1.8 and r.q2<2.6}">
                    <td>2</td>
                    <td>Coverage of the Syllabus</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
            </c:when>
            <c:when test="${r.q2>=2.6 and r.q2<3.4}">
                    <td>2</td>
                    <td>Coverage of the Syllabus</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
            </c:when>
        </c:choose>
        </tr>
        <tr>
        <c:choose>
            <c:when test="${r.q3>=1 and r.q3<1.8 } ">
                    <td>3</td>
                    <td>Regularity of the Teacher</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
            </c:when>
            <c:when test="${r.q3>=1.8 and r.q3<2.6}">
                    <td>3</td>
                    <td>Regularity of the Teacher</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
            </c:when>
            <c:when test="${r.q3>=2.6 and r.q3<3.4}">
                    <td>3</td>
                    <td>Regularity of the Teacher</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
            </c:when>
        </c:choose>
        </tr>
        <tr>
        <c:choose>
            <c:when test="${r.q4>=1 and r.q4<1.8 } ">
                    <td>4</td>
                    <td>Knowledge of the Teacher in the Subject</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
            </c:when>
            <c:when test="${r.q4>=1.8 and r.q4<2.6}">
                    <td>4</td>
                    <td>Knowledge of the Teacher in the Subject</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
            </c:when>
            <c:when test="${r.q4>=2.6 and r.q4<3.4}">
                    <td>4</td>
                    <td>Knowledge of the Teacher in the Subject</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
            </c:when>
        </c:choose>
        </tr>
        <tr>
        <c:choose>
            <c:when test="${r.q5>=1 and r.q5<1.8 } ">
                    <td>5</td>
                    <td>Ability of the Teacher to teach and respond to Queries</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
            </c:when>
            <c:when test="${r.q5>=1.8 and r.q5<2.6}">
                    <td>5</td>
                    <td>Ability of the Teacher to teach and respond to Queries</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
            </c:when>
            <c:when test="${r.q5>=2.6 and r.q5<3.4}">
                    <td>5</td>
                    <td>Ability of the Teacher to teach and respond to Queries</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
            </c:when>
        </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q6>=1 and r.q6<1.8 } ">
                    <td>6</td>
                    <td>Organization of the Lecture</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q6>=1.8 and r.q6<2.6}">
                    <td>6</td>
                    <td>Organization of the Lecture</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q6>=2.6 and r.q6<3.4}">
                    <td>6</td>
                    <td>Organization of the Lecture</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q7>=1 and r.q7<1.8 } ">
                    <td>7</td>
                    <td>Audibility of the Teacher's voice during the Class</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q7>=1.8 and r.q7<2.6}">
                    <td>7</td>
                    <td>Audibility of the Teacher's voice during the Class</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q7>=2.6 and r.q7<3.4}">
                    <td>7</td>
                    <td>Audibility of the Teacher's voice during the Class</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q8>=1 and r.q8<1.8 } ">
                    <td>8</td>
                    <td>Utilization of Blackboard and other Teaching Aids</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q8>=1.8 and r.q8<2.6}">
                    <td>8</td>
                    <td>Utilization of Blackboard and other Teaching Aids</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q8>=2.6 and r.q8<3.4}">
                    <td>8</td>
                    <td>Utilization of Blackboard and other Teaching Aids</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q9>=1 and r.q9<1.8 } ">
                    <td>9</td>
                    <td>Summarizing Key Points by the Teacher at end of the class</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q9>=1.8 and r.q9<2.6}">
                    <td>9</td>
                    <td>Summarizing Key Points by the Teacher at end of the class</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q9>=2.6 and r.q9<3.4}">
                    <td>9</td>
                    <td>Summarizing Key Points by the Teacher at end of the class</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q10>=1 and r.q10<1.8 } ">
                    <td>10</td>
                    <td>Explaining concepts, Giving solution of problems/numericals</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q10>=1.8 and r.q10<2.6}">
                    <td>10</td>
                    <td>Explaining concepts, Giving solution of problems/numericals</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q10>=2.6 and r.q10<3.4}">
                    <td>10</td>
                    <td>Explaining concepts, Giving solution of problems/numericals</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q11>=1 and r.q11<1.8 } ">
                    <td>11</td>
                    <td>Respect and understanding of the Teacher for the students</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q11>=1.8 and r.q11<2.6}">
                    <td>11</td>
                    <td>Respect and understanding of the Teacher for the students</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q1>=2.6 and r.q1<3.4}">
                    <td>11</td>
                    <td>Respect and understanding of the Teacher for the students</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q12>=1 and r.q12<1.8 } ">
                    <td>12</td>
                    <td>Encouragement of the Teacher for the students to ask questions</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q12>=1.8 and r.q12<2.6}">
                    <td>12</td>
                    <td>Encouragement of the Teacher for the students to ask questions</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q12>=2.6 and r.q12<3.4}">
                    <td>12</td>
                    <td>Encouragement of the Teacher for the students to ask questions</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q13>=1 and r.q13<1.8 } ">
                    <td>13</td>
                    <td>Tolerance of the Teacher to different opinions and arguments</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q13>=1.8 and r.q13<2.6}">
                    <td>13</td>
                    <td>Tolerance of the Teacher to different opinions and arguments</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q13>=2.6 and r.q13<3.4}">
                    <td>13</td>
                    <td>Tolerance of the Teacher to different opinions and arguments</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q14>=1 and r.q14<1.8 } ">
                    <td>14</td>
                    <td>Availability of the Teacher beyond the Class hours</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q14>=1.8 and r.q14<2.6}">
                    <td>14</td>
                    <td>Availability of the Teacher beyond the Class hours</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q14>=2.6 and r.q14<3.4}">
                    <td>14</td>
                    <td>Availability of the Teacher beyond the Class hours</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q15>=1 and r.q15<1.8 } ">
                    <td>15</td>
                    <td>Ability to adjust the pace as per the student's level of understanding</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q15>=1.8 and r.q15<2.6}">
                    <td>15</td>
                    <td>Ability to adjust the pace as per the student's level of understanding</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q15>=2.6 and r.q15<3.4}">
                    <td>15</td>
                    <td>Ability to adjust the pace as per the student's level of understanding</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q16>=1 and r.q16<1.8 } ">
                    <td>16</td>
                    <td>Regular assignments, tutorials and their timely evaluation</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q16>=1.8 and r.q16<2.6}">
                    <td>16</td>
                    <td>Regular assignments, tutorials and their timely evaluation</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q16>=2.6 and r.q16<3.4}">
                    <td>16</td>
                    <td>Regular assignments, tutorials and their timely evaluation</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q17>=1 and r.q17<1.8 } ">
                    <td>17</td>
                    <td>Coverage of the practical/experimental aspects of the course</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q17>=1.8 and r.q17<2.6}">
                    <td>17</td>
                    <td>Coverage of the practical/experimental aspects of the course</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q17>=2.6 and r.q17<3.4}">
                    <td>17</td>
                    <td>Coverage of the practical/experimental aspects of the course</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q18>=1 and r.q18<1.8 } ">
                    <td>18</td>
                    <td>Guidelines and tips on Pattern of the Question Papers</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q18>=1.8 and r.q18<2.6}">
                    <td>18</td>
                    <td>Guidelines and tips on Pattern of the Question Papers</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q18>=2.6 and r.q18<3.4}">
                    <td>18</td>
                    <td>Guidelines and tips on Pattern of the Question Papers</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q19>=1 and r.q19<1.8 } ">
                    <td>19</td>
                    <td>Level of Mid Semester and End Semester Exams</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q19>=1.8 and r.q19<2.6}">
                    <td>19</td>
                    <td>Level of Mid Semester and End Semester Exams</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q19>=2.6 and r.q19<3.4}">
                    <td>19</td>
                    <td>Level of Mid Semester and End Semester Exams</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q20>=1 and r.q20<1.8 } ">
                    <td>20</td>
                    <td>Timely evaluation and showing of answer sheets of exams</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q20>=1.8 and r.q20<2.6}">
                    <td>20</td>
                    <td>Timely evaluation and showing of answer sheets of exams</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q20>=2.6 and r.q20<3.4}">
                    <td>20</td>
                    <td>Timely evaluation and showing of answer sheets of exams</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q21>=1 and r.q21<1.8 } ">
                    <td>21</td>
                    <td>Satisfaction with the contents of the course syllabus</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q21>=1.8 and r.q21<2.6}">
                    <td>21</td>
                    <td>Satisfaction with the contents of the course syllabus</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q21>=2.6 and r.q21<3.4}">
                    <td>21</td>
                    <td>Satisfaction with the contents of the course syllabus</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q22>=1 and r.q22<1.8 } ">
                    <td>22</td>
                    <td>Suitability and Relevance of the course with the Program</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q22>=1.8 and r.q22<2.6}">
                    <td>22</td>
                    <td>Suitability and Relevance of the course with the Program</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q22>=2.6 and r.q22<3.4}">
                    <td>22</td>
                    <td>Suitability and Relevance of the course with the Program</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q23>=1 and r.q23<1.8 } ">
                    <td>23</td>
                    <td>Satisfaction level for the evaluation of end semester exam</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q23>=1.8 and r.q23<2.6}">
                    <td>23</td>
                    <td>Satisfaction level for the evaluation of end semester exam</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q23>=2.6 and r.q23<3.4}">
                    <td>23</td>
                    <td>Satisfaction level for the evaluation of end semester exam</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q24>=1 and r.q24<1.8 } ">
                    <td>24</td>
                    <td>Fairness of evaluation of exam answer copies</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q24>=1.8 and r.q24<2.6}">
                    <td>24</td>
                    <td>Fairness of evaluation of exam answer copies</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q24>=2.6 and r.q24<3.4}">
                    <td>24</td>
                    <td>Fairness of evaluation of exam answer copies</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${r.q25>=1 and r.q25<1.8 } ">
                    <td>25</td>
                    <td>Overall suitability of the Teacher to teach this course</td>
                    <td>poor</td>
                    <td></td>
                    <td></td>
                </c:when>
                <c:when test="${r.q25>=1.8 and r.q25<2.6}">
                    <td>25</td>
                    <td>Overall suitability of the Teacher to teach this course</td>
                    <td></td>
                    <td>average</td>
                    <td></td>
                </c:when>
                <c:when test="${r.q25>=2.6 and r.q25<3.4}">
                    <td>25</td>
                    <td>Overall suitability of the Teacher to teach this course</td>
                    <td></td>
                    <td></td>
                    <td>good</td>
                </c:when>
            </c:choose>
        </tr>
    </c:forEach>
</table>

</body>
</html>
