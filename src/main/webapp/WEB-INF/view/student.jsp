<%--
  Created by IntelliJ IDEA.
  User: tripti
  Date: 25/05/20
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Page</title>
    <link rel="stylesheet" type="text/css" href="student.css">
</head>
<body>
<form>
    <div class ="container">
        <h2>Sign in to your account</h2>
        <hr>
        <label for="email">Email</label><br>
        <input type="text" id="email" name="email" required><br><br>
        <label for="password">Password</label><br>
        <input type="text" id="password" name="password" required><br><br>
        <input type="submit" formaction="feedback.jsp" value="Sign In">
        <hr>
    </div>
    <div class="container Register">
        <p>New User? <a href="register">Register</a></p>
    </div>

</form>

</body>
</html>
