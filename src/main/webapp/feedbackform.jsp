<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <title>Feedback Form</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <% long id = Long.parseLong(request.getParameter("id")); %>
    <div class="container">
    <h1>Student's Feedback Form for Teaching</h1>
    <p>
        (Questionaire in this feedback form has been designed to seek feedback of students with an objective
        to strengthen the quality of teaching-learning environment.Students with attendance more than 75%
        only need to fill this form)
    </p>
    <form method="POST" action="/results/add/<%=id%>">
        <form :hidden path="id"/>
<%--        <input type="hidden" name="result_id" value="${result.result_id }" />--%>
        <label for="dname">Name of the Department:</label>
        <select id="dname" name="dname">
            <c:forEach items="${courseList}" var="c">
                <option value="${c.department}">${c.department}</option>
            </c:forEach>
        </select><br><br>
        <label for="session">Session:</label>
        <input type="text" id="session" name="session"><br> <br>
        <label for="class">Class:</label>
        <input type="text" id="class" name="cclass"><br><br>
        <label for="sem">Semester:</label>
        <input type="text" id="sem" name="sem"><br><br>
        <label for="cname">Name of course(with course code):</label>
        <select id="cname" name="cname">
            <c:forEach items="${courseList}" var="c">
            <option value="${c.coursename}">${c.coursename}</option>
            </c:forEach>
        </select><br><br>
        <label for="tname">Name of the Teacher:</label>
        <input type="text" id="tname" name="tname"><br><br>
        <label for="totallec">Total number of Lectures delivered by the Teacher in the Semester:</label>
        <input type="text" id="totallec" name="totallec"><br><br>
        <label for="lecattended">Number of Lectures attended by the Student filling the form with percentage:</label>
        <input type="text" id="lecattended" name="lecattended"><br><br>
        <hr>
    <p>1. Availability of Lecture Plan in the beginning of the Semester.</p>
        <input type="radio" name="ques1" value="5">Excellent<br>
        <input type="radio" name="ques1" value="4">Very Good<br>
        <input type="radio" name="ques1" value="3">Good<br>
        <input type="radio" name="ques1" value="2">Average<br>
        <input type="radio" name="ques1" value="1">Poor<br><br>
    <hr>
    <p>2. Coverage of the Syllabus.</p>
        <input type="radio" name="ques2" value="5">Excellent<br>
        <input type="radio" name="ques2" value="4">Very Good<br>
        <input type="radio" name="ques2" value="3">Good<br>
        <input type="radio" name="ques2" value="2">Average<br>
        <input type="radio" name="ques2" value="1">Poor<br><br>
    <hr>
    <p>3. Regularity of the Teacher.</p>
        <input type="radio" name="ques3" value="5">Excellent<br>
        <input type="radio" name="ques3" value="4">Very Good<br>
        <input type="radio" name="ques3" value="3">Good<br>
        <input type="radio" name="ques3" value="2">Average<br>
        <input type="radio" name="ques3" value="1">Poor<br><br>
    <hr>
    <p>4. Knowledge of the Teacher in the Subject.</p>
        <input type="radio" name="ques4" value="5">Excellent<br>
        <input type="radio" name="ques4" value="4">Very Good<br>
        <input type="radio" name="ques4" value="3">Good<br>
        <input type="radio" name="ques4" value="2">Average<br>
        <input type="radio" name="ques4" value="1">Poor<br><br>
    <hr>
    <p>5. Ability of the Teacher to teach and respond to queries.</p>
        <input type="radio" name="ques5" value="5">Excellent<br>
        <input type="radio" name="ques5" value="4">Very Good<br>
        <input type="radio" name="ques5" value="3">Good<br>
        <input type="radio" name="ques5" value="2">Average<br>
        <input type="radio" name="ques5" value="1">Poor<br><br>
    <hr>
    <p>6. Organization of the Lecture.</p>
        <input type="radio" name="ques6" value="5">Excellent<br>
        <input type="radio" name="ques6" value="4">Very Good<br>
        <input type="radio" name="ques6" value="3">Good<br>
        <input type="radio" name="ques6" value="2">Average<br>
        <input type="radio" name="ques6" value="1">Poor<br><br>
    <hr>
    <p>7. Audibility of the Teacher's voice during the Class.</p>
        <input type="radio" name="ques7" value="5">Excellent<br>
        <input type="radio" name="ques7" value="4">Very Good<br>
        <input type="radio" name="ques7" value="3">Good<br>
        <input type="radio" name="ques7" value="2">Average<br>
        <input type="radio" name="ques7" value="1">Poor<br><br>
    <hr>
    <p>8. Utilization of Blackboard and other Teaching Aids.</p>
        <input type="radio" name="ques8" value="5">Excellent<br>
        <input type="radio" name="ques8" value="4">Very Good<br>
        <input type="radio" name="ques8" value="3">Good<br>
        <input type="radio" name="ques8" value="2">Average<br>
        <input type="radio" name="ques8" value="1">Poor<br><br>
    <hr>
    <p>9. Summarizing Key Points by the Teacher at end of the Class.</p>
        <input type="radio" name="ques9" value="5">Excellent<br>
        <input type="radio" name="ques9" value="4">Very Good<br>
        <input type="radio" name="ques9" value="3">Good<br>
        <input type="radio" name="ques9" value="2">Average<br>
        <input type="radio" name="ques9" value="1">Poor<br><br>
    <hr>
    <p>10. Explaining concepts, Giving solution of problems/numericals.</p>
        <input type="radio" name="ques10" value="5">Excellent<br>
        <input type="radio" name="ques10" value="4">Very Good<br>
        <input type="radio" name="ques10" value="3">Good<br>
        <input type="radio" name="ques10" value="2">Average<br>
        <input type="radio" name="ques10" value="1">Poor<br><br>
    <hr>
    <p>11. Respect and understanding of the Teacher for the students.</p>
        <input type="radio" name="ques11" value="5">Excellent<br>
        <input type="radio" name="ques11" value="4">Very Good<br>
        <input type="radio" name="ques11" value="3">Good<br>
        <input type="radio" name="ques11" value="2">Average<br>
        <input type="radio" name="ques11" value="1">Poor<br><br>
    <hr>
    <p>12. Encouragement of the Teacher for the students to ask questions.</p>
        <input type="radio" name="ques12" value="5">Excellent<br>
        <input type="radio" name="ques12" value="4">Very Good<br>
        <input type="radio" name="ques12" value="3">Good<br>
        <input type="radio" name="ques12" value="2">Average<br>
        <input type="radio" name="ques12" value="1">Poor<br><br>
    <hr>
    <p>13. Tolerance of the Teacher to different opinions and arguments.</p>
        <input type="radio" name="ques13" value="5">Excellent<br>
        <input type="radio" name="ques13" value="4">Very Good<br>
        <input type="radio" name="ques13" value="3">Good<br>
        <input type="radio" name="ques13" value="2">Average<br>
        <input type="radio" name="ques13" value="1">Poor<br><br>
    <hr>
    <p>14. Availability of the Teacher beyond the Class hours.</p>
        <input type="radio" name="ques14" value="5">Excellent<br>
        <input type="radio" name="ques14" value="4">Very Good<br>
        <input type="radio" name="ques14" value="3">Good<br>
        <input type="radio" name="ques14" value="2">Average<br>
        <input type="radio" name="ques14" value="1">Poor<br><br>
    <hr>
    <p>15. Ability to adjust the pace as per the student's level of understanding.</p>
        <input type="radio" name="ques15" value="5">Excellent<br>
        <input type="radio" name="ques15" value="4">Very Good<br>
        <input type="radio" name="ques15" value="3">Good<br>
        <input type="radio" name="ques15" value="2">Average<br>
        <input type="radio" name="ques15" value="1">Poor<br><br>
    <hr>
    <p>16. Regular assignments, tutorials and their timely evaluation.</p>
        <input type="radio" name="ques16" value="5">Excellent<br>
        <input type="radio" name="ques16" value="4">Very Good<br>
        <input type="radio" name="ques16" value="3">Good<br>
        <input type="radio" name="ques16" value="2">Average<br>
        <input type="radio" name="ques16" value="1">Poor<br><br>
    <hr>
    <p>17. Coverage of the practical/experimental aspects of the course.</p>
        <input type="radio" name="ques17" value="5">Excellent<br>
        <input type="radio" name="ques17" value="4">Very Good<br>
        <input type="radio" name="ques17" value="3">Good<br>
        <input type="radio" name="ques17" value="2">Average<br>
        <input type="radio" name="ques17" value="1">Poor<br><br>
    <hr>
    <p>18. Guidelines and tips on Pattern of the Question Papers.</p>
        <input type="radio" name="ques18" value="5">Excellent<br>
        <input type="radio" name="ques18" value="4">Very Good<br>
        <input type="radio" name="ques18" value="3">Good<br>
        <input type="radio" name="ques18" value="2">Average<br>
        <input type="radio" name="ques18" value="1">Poor<br><br>
    <hr>
    <p>19. Level of Mid Semester and End Semester Exams.</p>
        <input type="radio" name="ques19" value="5">Excellent<br>
        <input type="radio" name="ques19" value="4">Very Good<br>
        <input type="radio" name="ques19" value="3">Good<br>
        <input type="radio" name="ques19" value="2">Average<br>
        <input type="radio" name="ques19" value="1">Poor<br><br>
    <hr>
    <p>20. Timely evaluation and showing of answer sheets of exams.</p>
        <input type="radio" name="ques20" value="5">Excellent<br>
        <input type="radio" name="ques20" value="4">Very Good<br>
        <input type="radio" name="ques20" value="3">Good<br>
        <input type="radio" name="ques20" value="2">Average<br>
        <input type="radio" name="ques20" value="1">Poor<br><br>
    <hr>
    <p>21. Satisfaction with the contents of the course syllabus. </p>
        <input type="radio" name="ques21" value="5">Excellent<br>
        <input type="radio" name="ques21" value="4">Very Good<br>
        <input type="radio" name="ques21" value="3">Good<br>
        <input type="radio" name="ques21" value="2">Average<br>
        <input type="radio" name="ques21" value="1">Poor<br><br>
    <hr>
    <p>22. Suitability and Relevance of the course with the Program.</p>
        <input type="radio" name="ques22" value="5">Excellent<br>
        <input type="radio" name="ques22" value="4">Very Good<br>
        <input type="radio" name="ques22" value="3">Good<br>
        <input type="radio" name="ques22" value="2">Average<br>
        <input type="radio" name="ques22" value="1">Poor<br><br>
    <hr>
    <p>23. Satisfaction level for the evaluation of end semester exam.</p>
        <input type="radio" name="ques23" value="5">Excellent<br>
        <input type="radio" name="ques23" value="4">Very Good<br>
        <input type="radio" name="ques23" value="3">Good<br>
        <input type="radio" name="ques23" value="2">Average<br>
        <input type="radio" name="ques23" value="1">Poor<br><br>
    <hr>
    <p>24. Fairness of evaluation of exam answer copies.</p>
        <input type="radio" name="ques24" value="5">Excellent<br>
        <input type="radio" name="ques24" value="4">Very Good<br>
        <input type="radio" name="ques24" value="3">Good<br>
        <input type="radio" name="ques24" value="2">Average<br>
        <input type="radio" name="ques24" value="1">Poor<br><br>
    <hr>
    <p>25. Overall suitability of the Teacher to teach this course.</p>
        <input type="radio" name="ques25" value="5">Excellent<br>
        <input type="radio" name="ques25" value="4">Very Good<br>
        <input type="radio" name="ques25" value="3">Good<br>
        <input type="radio" name="ques25" value="2">Average<br>
        <input type="radio" name="ques25" value="1">Poor<br><br>
    <hr>
    <br>
    <input type="submit" value="Submit">
</form>
    </div>
</body>
</html>