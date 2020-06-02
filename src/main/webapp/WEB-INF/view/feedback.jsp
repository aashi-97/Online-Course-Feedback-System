<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Aryan
  Date: 25-05-2020
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Feedback Page</title>
</head>
<body>
<form>
    <div class="container"></div>
<h1>Student's Feedback Form for Teaching</h1>
    <p>
        (Questionaire in this feedback form has been designed to seek feedback of students with an objective
        to strengthen the quality of teaching-learning environment.Students with attendance more than 75%
        only need to fill this form)
    </p>

    <form>
        <label for="dname">Name of the Department:</label>
        <input type="text" id="dname" name="dname" value=" "><br><br>
        <label for="session">Session:</label>
        <input type="text" id="session" name="session" value=" ">
        <label for="class">Class:</label>
        <input type="class" id="class" name="class" value=" ">
        <label for="sem">Semester:</label>
        <input type="text" id="sem" name="sem" value=" "><br><br>
        <label for="cname">Name of course(with course code):</label>
        <input type="text" id="cname" name="cname" value=" "><br><br>
        <label for="tname">Name of the Teacher:</label>
        <input type="text" id="tname" name="tname" value=" "><br><br>
        <label for="totallec">Total number of Lectures delivered by the Teacher in the Semester:</label>
        <input type="text" id="totallec" name="totallec" value=" "><br><br>
        <label for="formper">Number of Lectures attended by the Student filling the form with percentage:</label>
        <input type="text" id="formper" name="formper" value=" "><br><br>
        <hr>

    </form>

    <p>1. Availability of Lecture Plan in the beginning of the Semester.</p>

    <input type="radio" id="excellent" name="availability">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="availability">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="availability">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="availability">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="availability">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>2. Coverage of the Syllabus.</p>

    <input type="radio" id="excellent" name="coverage">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="coverage">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="coverage">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="coverage">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="coverage">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>3. Regularity of the Teacher.</p>

    <input type="radio" id="excellent" name="regularity">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="regularity">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="regularity">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="regularity">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="regularity">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>4. Knowledge of the Teacher in the Subject.</p>

    <input type="radio" id="excellent" name="knowledge">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="knowledge">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="knowledge">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="knowledge">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="knowledge">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>5. Ability of the Teacher to teach and respond to queries.</p>

    <input type="radio" id="excellent" name="ability">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="ability">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="ability">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="ability">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="ability">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>6. Organization of the Lecture.</p>

    <input type="radio" id="excellent" name="organization">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="organization">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="organization">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="organization">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="organization">
    <label for="poor">Poor</label><br><br>
    <hr>



    <p>7. Audibility of the Teacher's voice during the Class.</p>

    <input type="radio" id="excellent" name="audibility">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="audibility">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="audibility">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="audibility">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="audibility">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>8. Utilization of Blackboard and other Teaching Aids.</p>

    <input type="radio" id="excellent" name="utilization">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="utilization">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="utilization">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="utilization">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="utilization">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>9. Summarizing Key Points by the Teacher at end of the Class.</p>

    <input type="radio" id="excellent" name="summarizing">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="summarizing">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="summarizing">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="summarizing">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="summarizing">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>10. Explaining concepts, Giving solution of problems/numericals.</p>

    <input type="radio" id="excellent" name="explaining">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="explaining">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="explaining">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="explaining">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="explaining">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>11. Respect and understanding of the Teacher for the students.</p>

    <input type="radio" id="excellent" name="respect">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="respect">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="respect">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="respect">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="respect">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>12. Encouragement of the Teacher for the students to ask questions.</p>

    <input type="radio" id="excellent" name="encouragement">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="encouragement">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="encouragement">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="encouragement">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="encouragement">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>13. Tolerance of the Teacher to different opinions and arguments.</p>

    <input type="radio" id="excellent" name="opinions">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="opinions">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="opinions">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="opinions">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="opinions">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>14. Availability of the Teacher beyond the Class hours.</p>

    <input type="radio" id="excellent" name="beyond">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="beyond">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="beyond">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="beyond">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="beyond">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>15. Ability to adjust the pace as per the student's level of understanding.</p>

    <input type="radio" id="excellent" name="ability">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="ability">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="ability">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="ability">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="ability">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>16. Regular assignments, tutorials and their timely evaluation.</p>

    <input type="radio" id="excellent" name="evaluation">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="evaluation">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="evaluation">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="evaluation">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="evaluation">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>17. Coverage of the practical/experimental aspects of the course.</p>

    <input type="radio" id="excellent" name="aspects">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="aspects">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="aspects">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="aspects">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="aspects">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>18. Guidelines and tips on Pattern of the Question Papers.</p>

    <input type="radio" id="excellent" name="tips">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="tips">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="tips">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="tips">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="tips">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>19. Level of Mid Semester and End Semester Exams.</p>

    <input type="radio" id="excellent" name="level">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="level">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="level">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="level">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="level">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>20. Timely evaluation and showing of answer sheets of exams.</p>

    <input type="radio" id="excellent" name="showing">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="showing">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="showing">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="showing">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="showing">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>21. Satisfaction with the contents of the course syllabus. </p>

    <input type="radio" id="excellent" name="contents">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="contents">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="contents">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="contents">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="contents">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>22. Suitability and Relevance of the course with the Program.</p>

    <input type="radio" id="excellent" name="relevance">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="relevance">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="relevance">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="relevance">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="relevance">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>23. Satisfaction level for the evaluation of end semester exam.</p>

    <input type="radio" id="excellent" name="exam">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="exam">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="exam">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="exam">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="exam">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>24. Fairness of evaluation of exam answer copies.</p>

    <input type="radio" id="excellent" name="fairness">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="fairness">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="fairness">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="fairness">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="fairness">
    <label for="poor">Poor</label><br><br>
    <hr>

    <p>25. Overall suitability of the Teacher to teach this course.</p>

    <input type="radio" id="excellent" name="overall">
    <label for="Excellent">Excellent</label><br>
    <input type="radio" id="very good" name="overall">
    <label for="very good">Very Good</label><br>
    <input type="radio" id="good" name="overall">
    <label for="good">Good</label><br>
    <input type="radio" id="average" name="overall">
    <label for="average">Average</label><br>
    <input type="radio" id="poor" name="overall">
    <label for="poor">Poor</label><br><br>
    <hr>
    <br>

    <input type="submit" value="Submit">

</form>
</body>
</html>
