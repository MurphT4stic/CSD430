<!--Tabari Harvey, Module-3 Assignment - Working with JSP Forms, CSD430-->
<!--This is the index page-->>
<head%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Job Application Form</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <h1>Job Application</h1>
        <form action="result.jsp" method="post">
            <label>First Name:</label>
            <input type="text" name="firstName" required><br>
            
            <label>Last Name</label>
            <input type="text" name="lastName" required><br>

            <label>Email:</label>
            <input type="email" name="email" required><br>

            <label>Phone Number:</label>
            <input type="tel" name="phoneNumber" required><br>

            <label>Position Applied For:</label>
            <input type="text" name="position" required><br>

            <input type="submit" value="Submit">
            </form>

    </body>
</html> 