<%--
  Created by IntelliJ IDEA.
  User: tripti
  Date: 25/05/20
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<div class="container">
    <h2>Create an account</h2>
    <hr>
    <form>
        <label for="username">Username</label><br>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Password</label><br>
        <input type="text" id="password" name="password" required><br><br>
        <label for="email">Email</label><br>
        <input type="text" id ="email" name="email" required><br><br>
        <label for="fname">First Name</label><br>
        <input type="text" id ="fname" name="fname" required><br><br>
        <label for="lname">Last Name</label><br>
        <input type="text" id ="lname" name="lname" required><br><br>
        <label for="pnum">Phone Number</label><br>
        <input type="text" id ="pnum" name="pnum" required><br><br>
        <input type="submit" formaction="#" value="Register">
    </form>
</div>

</body>
</html>
