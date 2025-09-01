<!--Tabari Harvey, Module-4 Assignment, CSD430-->
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!-- Import your bean class -->
<%@ page import="jobapp.JobApplication" %>
<!DOCTYPE html>
<html>
<head>
    <title>Job Application Form</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        table { border-collapse: collapse; width: 50%; }
        td { padding: 8px; }
    </style>
</head>
<body>
    <h2>Enter Job Application Details</h2>

    <!-- Form will send data to result.jsp -->
    <form action="result.jsp" method="post">
        <table border="1">
            <tr>
                <td>Applicant Name:</td>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" required></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><input type="text" name="phone" required></td>
            </tr>
            <tr>
                <td>Position:</td>
                <td><input type="text" name="position" required></td>
            </tr>
            <tr>
                <td>Experience (Years):</td>
                <td><input type="number" name="experience" required></td>
            </tr>
        </table>
        <br>
        <input type="submit" value="Submit Application">
    </form>
</body>
</html>
