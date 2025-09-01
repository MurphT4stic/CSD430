<!--Tabari Harvey, Module-4 Assignment, CSD430-->
<!--This will show the result of the job application form submission-->
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="jobapp.JobApplication" %>  <!-- Import your bean class -->
<!DOCTYPE html>
<html>
<head>
    <title>Job Application Results</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        table { border-collapse: collapse; width: 60%; }
        th, td { border: 1px solid black; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <h2>Application Details</h2>

    <%
        // Create a new instance of JobApplication bean
        JobApplication app = new JobApplication();

        // Get values from the form (request parameters)
        app.setName(request.getParameter("name"));
        app.setEmail(request.getParameter("email"));
        app.setPhone(request.getParameter("phone"));
        app.setPosition(request.getParameter("position"));
        app.setExperience(Integer.parseInt(request.getParameter("experience")));
    %>

    <!-- Display data in a table -->
    <table>
        <tr>
            <th>Field</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Name</td>
            <td><%= app.getName() %></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><%= app.getEmail() %></td>
        </tr>
        <tr>
            <td>Phone</td>
            <td><%= app.getPhone() %></td>
        </tr>
        <tr>
            <td>Position</td>
            <td><%= app.getPosition() %></td>
        </tr>
        <tr>
            <td>Years of Experience</td>
            <td><%= app.getExperience() %></td>
        </tr>
    </table>
</body>
</html>
<!--This JSP page processes the form submission and displays the results-->