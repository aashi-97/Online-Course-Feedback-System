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
    <link href="css/feedbackform.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <% long id = Long.parseLong(request.getParameter("id")); %>
    <div class="container">
    <h1>Feedback Form</h1>
        <hr class="zero">
    <p><i>
        (Questionaire in this feedback form has been designed to seek feedback of students with an objective
        to strengthen the quality of teaching-learning environment.Students with attendance more than 75%
        only need to fill this form)
    </i></p>
        <hr class="zero">
    <form method="POST" action="/results/add/<%=id%>">
        <form :hidden path="id"/>

        <div class="con">
        <label for="dname">Name of the Department:</label>
        <select id="dname" name="dname">
                <option value="${dept}">${dept}</option>
        </select><br><br>
        <label for="session">Session:</label>
        <input type="text" id="session" name="session" placeholder="2020-21"><br> <br>
        <label for="class">Class:</label>
        <select id="class" name="cclass">
            <option value="1st year">1st year</option>
            <option value="2nd year">2nd year</option>
            <option value="3rd year">3rd year</option>
            <option value="4th year">4th year</option>
        </select><br><br>
        <label for="sem">Semester:</label>
        <input type="number" id="sem" name="sem" min="1" max="8"><br><br>
        <label for="cname">Name of course(with course code):</label>
        <select id="cname" name="cname">
            <c:forEach items="${courseList}" var="c">
            <option value="${c.coursename}">${c.coursename} ${c.subjectid}</option>
            </c:forEach>
        </select><br><br>
        <label for="tname">Name of the Teacher:</label>
        <input type="text" id="tname" name="tname" placeholder="abc"><br><br>
        <label for="totallec">Total number of Lectures delivered by the Teacher in the Semester:</label>
        <input type="text" id="totallec" name="totallec" placeholder="enter int value only"><br><br>
        <label for="lecattended">Number of Lectures attended by the Student filling the form with percentage:</label>
        <input type="text" id="lecattended" name="lecattended" placeholder="enter int only"><br><br>
        </div>

        <hr class="one">
    <p>1. Availability of Lecture Plan in the beginning of the Semester.</p>
        <div class="radio">
        <input type="radio" name="ques1" value="5">Excellent<br>
        <input type="radio" name="ques1" value="4">Very Good<br>
        <input type="radio" name="ques1" value="3">Good<br>
        <input type="radio" name="ques1" value="2">Average<br>
        <input type="radio" name="ques1" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>2. Coverage of the Syllabus.</p>
        <div class="radio">
        <input type="radio" name="ques2" value="5">Excellent<br>
        <input type="radio" name="ques2" value="4">Very Good<br>
        <input type="radio" name="ques2" value="3">Good<br>
        <input type="radio" name="ques2" value="2">Average<br>
        <input type="radio" name="ques2" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>3. Regularity of the Teacher.</p>
        <div class="radio">
        <input type="radio" name="ques3" value="5">Excellent<br>
        <input type="radio" name="ques3" value="4">Very Good<br>
        <input type="radio" name="ques3" value="3">Good<br>
        <input type="radio" name="ques3" value="2">Average<br>
        <input type="radio" name="ques3" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>4. Knowledge of the Teacher in the Subject.</p>
        <div class="radio">
        <input type="radio" name="ques4" value="5">Excellent<br>
        <input type="radio" name="ques4" value="4">Very Good<br>
        <input type="radio" name="ques4" value="3">Good<br>
        <input type="radio" name="ques4" value="2">Average<br>
        <input type="radio" name="ques4" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>5. Ability of the Teacher to teach and respond to queries.</p>
        <div class="radio">
        <input type="radio" name="ques5" value="5">Excellent<br>
        <input type="radio" name="ques5" value="4">Very Good<br>
        <input type="radio" name="ques5" value="3">Good<br>
        <input type="radio" name="ques5" value="2">Average<br>
        <input type="radio" name="ques5" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>6. Organization of the Lecture.</p>
        <div class="radio">
        <input type="radio" name="ques6" value="5">Excellent<br>
        <input type="radio" name="ques6" value="4">Very Good<br>
        <input type="radio" name="ques6" value="3">Good<br>
        <input type="radio" name="ques6" value="2">Average<br>
        <input type="radio" name="ques6" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>7. Audibility of the Teacher's voice during the Class.</p>
        <div class="radio">
        <input type="radio" name="ques7" value="5">Excellent<br>
        <input type="radio" name="ques7" value="4">Very Good<br>
        <input type="radio" name="ques7" value="3">Good<br>
        <input type="radio" name="ques7" value="2">Average<br>
        <input type="radio" name="ques7" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>8. Utilization of Blackboard and other Teaching Aids.</p>
        <div class="radio">
        <input type="radio" name="ques8" value="5">Excellent<br>
        <input type="radio" name="ques8" value="4">Very Good<br>
        <input type="radio" name="ques8" value="3">Good<br>
        <input type="radio" name="ques8" value="2">Average<br>
        <input type="radio" name="ques8" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>9. Summarizing Key Points by the Teacher at end of the Class.</p>
        <div class="radio">
        <input type="radio" name="ques9" value="5">Excellent<br>
        <input type="radio" name="ques9" value="4">Very Good<br>
        <input type="radio" name="ques9" value="3">Good<br>
        <input type="radio" name="ques9" value="2">Average<br>
        <input type="radio" name="ques9" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>10. Explaining concepts, Giving solution of problems/numericals.</p>
        <div class="radio">
        <input type="radio" name="ques10" value="5">Excellent<br>
        <input type="radio" name="ques10" value="4">Very Good<br>
        <input type="radio" name="ques10" value="3">Good<br>
        <input type="radio" name="ques10" value="2">Average<br>
        <input type="radio" name="ques10" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>11. Respect and understanding of the Teacher for the students.</p>
        <div class="radio">
        <input type="radio" name="ques11" value="5">Excellent<br>
        <input type="radio" name="ques11" value="4">Very Good<br>
        <input type="radio" name="ques11" value="3">Good<br>
        <input type="radio" name="ques11" value="2">Average<br>
        <input type="radio" name="ques11" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>12. Encouragement of the Teacher for the students to ask questions.</p>
        <div class="radio">
        <input type="radio" name="ques12" value="5">Excellent<br>
        <input type="radio" name="ques12" value="4">Very Good<br>
        <input type="radio" name="ques12" value="3">Good<br>
        <input type="radio" name="ques12" value="2">Average<br>
        <input type="radio" name="ques12" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>13. Tolerance of the Teacher to different opinions and arguments.</p>
        <div class="radio">
        <input type="radio" name="ques13" value="5">Excellent<br>
        <input type="radio" name="ques13" value="4">Very Good<br>
        <input type="radio" name="ques13" value="3">Good<br>
        <input type="radio" name="ques13" value="2">Average<br>
        <input type="radio" name="ques13" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>14. Availability of the Teacher beyond the Class hours.</p>
        <div class="radio">
        <input type="radio" name="ques14" value="5">Excellent<br>
        <input type="radio" name="ques14" value="4">Very Good<br>
        <input type="radio" name="ques14" value="3">Good<br>
        <input type="radio" name="ques14" value="2">Average<br>
        <input type="radio" name="ques14" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>15. Ability to adjust the pace as per the student's level of understanding.</p>
        <div class="radio">
        <input type="radio" name="ques15" value="5">Excellent<br>
        <input type="radio" name="ques15" value="4">Very Good<br>
        <input type="radio" name="ques15" value="3">Good<br>
        <input type="radio" name="ques15" value="2">Average<br>
        <input type="radio" name="ques15" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>16. Regular assignments, tutorials and their timely evaluation.</p>
        <div class="radio">
        <input type="radio" name="ques16" value="5">Excellent<br>
        <input type="radio" name="ques16" value="4">Very Good<br>
        <input type="radio" name="ques16" value="3">Good<br>
        <input type="radio" name="ques16" value="2">Average<br>
        <input type="radio" name="ques16" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>17. Coverage of the practical/experimental aspects of the course.</p>
        <div class="radio">
        <input type="radio" name="ques17" value="5">Excellent<br>
        <input type="radio" name="ques17" value="4">Very Good<br>
        <input type="radio" name="ques17" value="3">Good<br>
        <input type="radio" name="ques17" value="2">Average<br>
        <input type="radio" name="ques17" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>18. Guidelines and tips on Pattern of the Question Papers.</p>
        <div class="radio">
        <input type="radio" name="ques18" value="5">Excellent<br>
        <input type="radio" name="ques18" value="4">Very Good<br>
        <input type="radio" name="ques18" value="3">Good<br>
        <input type="radio" name="ques18" value="2">Average<br>
        <input type="radio" name="ques18" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>19. Level of Mid Semester and End Semester Exams.</p>
        <div class="radio">
        <input type="radio" name="ques19" value="5">Excellent<br>
        <input type="radio" name="ques19" value="4">Very Good<br>
        <input type="radio" name="ques19" value="3">Good<br>
        <input type="radio" name="ques19" value="2">Average<br>
        <input type="radio" name="ques19" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>20. Timely evaluation and showing of answer sheets of exams.</p>
        <div class="radio">
        <input type="radio" name="ques20" value="5">Excellent<br>
        <input type="radio" name="ques20" value="4">Very Good<br>
        <input type="radio" name="ques20" value="3">Good<br>
        <input type="radio" name="ques20" value="2">Average<br>
        <input type="radio" name="ques20" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>21. Satisfaction with the contents of the course syllabus. </p>
        <div class="radio">
        <input type="radio" name="ques21" value="5">Excellent<br>
        <input type="radio" name="ques21" value="4">Very Good<br>
        <input type="radio" name="ques21" value="3">Good<br>
        <input type="radio" name="ques21" value="2">Average<br>
        <input type="radio" name="ques21" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>22. Suitability and Relevance of the course with the Program.</p>
        <div class="radio">
        <input type="radio" name="ques22" value="5">Excellent<br>
        <input type="radio" name="ques22" value="4">Very Good<br>
        <input type="radio" name="ques22" value="3">Good<br>
        <input type="radio" name="ques22" value="2">Average<br>
        <input type="radio" name="ques22" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>23. Satisfaction level for the evaluation of end semester exam.</p>
        <div class="radio">
        <input type="radio" name="ques23" value="5">Excellent<br>
        <input type="radio" name="ques23" value="4">Very Good<br>
        <input type="radio" name="ques23" value="3">Good<br>
        <input type="radio" name="ques23" value="2">Average<br>
        <input type="radio" name="ques23" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>24. Fairness of evaluation of exam answer copies.</p>
        <div class="radio">
        <input type="radio" name="ques24" value="5">Excellent<br>
        <input type="radio" name="ques24" value="4">Very Good<br>
        <input type="radio" name="ques24" value="3">Good<br>
        <input type="radio" name="ques24" value="2">Average<br>
        <input type="radio" name="ques24" value="1">Poor<br>
        </div>
    <hr class="one">
    <p>25. Overall suitability of the Teacher to teach this course.</p>
        <div class="radio">
        <input type="radio" name="ques25" value="5">Excellent<br>
        <input type="radio" name="ques25" value="4">Very Good<br>
        <input type="radio" name="ques25" value="3">Good<br>
        <input type="radio" name="ques25" value="2">Average<br>
        <input type="radio" name="ques25" value="1">Poor<br>
        </div>
    <hr class="one">
        <div class="submit">
    <input type="submit" value="Submit">
        </div>
</form>
    </div>
</body>
</html>
