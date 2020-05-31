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
<h1>Feedback Form Template</h1>

    <p>1. The course outline/syllabus provided sufficient information on the course content.</p>

    <input type="radio" id="Strongly Agree" name="sufficient" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="sufficient" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="sufficient" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="sufficient" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="sufficient" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>2. I find the course materials (such as class notes) useful.</p>

    <input type="radio" id="Strongly Agree" name="useful" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="useful" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="useful" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="useful" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="useful" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>3. The assignments help me understand the material.</p>

    <input type="radio" id="Strongly Agree" name="understand" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="understand" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="understand" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="understand" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="understand" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>4. I am satisfied with the amount of material covered in class.</p>

    <input type="radio" id="Strongly Agree" name="satisfied" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="satisfied" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="satisfied" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="satisfied" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="satisfied" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>5. Overall, I am learning a great deal in this course.</p>

    <input type="radio" id="Strongly Agree" name="learning" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="learning" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="learning" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="learning" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="learning" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>6. The professor is well prepared for the class.</p>

    <input type="radio" id="Strongly Agree" name="prepared" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="prepared" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="prepared" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="prepared" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="prepared" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>



    <p>7. The professor presents the material clearly.</p>

    <input type="radio" id="Strongly Agree" name="presents" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="presents" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="presents" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="presents" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="presents" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>8. The professor gives the lectures at appropriate pace.</p>

    <input type="radio" id="Strongly Agree" name="appropriate" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="appropriate" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="appropriate" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="appropriate" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="appropriate" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>9. The professor is concerned that students understand the material.</p>

    <input type="radio" id="Strongly Agree" name="understand" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="understand" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="understand" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="understand" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="understand" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>10. The professor encourages students to participate in class.</p>

    <input type="radio" id="Strongly Agree" name="participate" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="participate" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="participate" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="participate" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="participate" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>11. The professor makes effective use of the class time.</p>

    <input type="radio" id="Strongly Agree" name="effective" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="effective" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="effective" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="effective" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="effective" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>12. The professor is available during office hours for consultations.</p>

    <input type="radio" id="Strongly Agree" name="consultations" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="consultations" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="consultations" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="consultations" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="consultations" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>13. The professor is helping me to learn a great deal in this course.</p>

    <input type="radio" id="Strongly Agree" name="helping" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="helping" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="helping" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="helping" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="helping" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>14. The professor provides timely and effective feedback regarding the tests and homework.</p>

    <input type="radio" id="Strongly Agree" name="provides" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="provides" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="provides" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="provides" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="provides" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>15. Overall,the professor is an effective teacher.</p>

    <input type="radio" id="Strongly Agree" name="overall" value="Strongly Agree">
    <label for="strongly agree">Strongly Agree</label><br>
    <input type="radio" id="Agree" name="overall" value="Agree">
    <label for="agree">Agree</label><br>
    <input type="radio" id="Neutral" name="overall" value="Neutral">
    <label for="neutral">Neutral</label><br>
    <input type="radio" id="Disagree" name="overall" value="Disagree">
    <label for="disagree">Disagree</label><br>
    <input type="radio" id="Strongly Disagree" name="overall" value="Strongly Disagree">
    <label for="strongly disagree">Strongly Disagree</label><br><br>
    <hr>

    <p>16. Any comments</p>
    <input type="text" id="comments" name="comments">
    <hr><br>

    <input type="submit" value="Submit">

</form>
</body>
</html>
