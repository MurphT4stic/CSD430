<!--Tabari Harvey, Module-3 Assignment - Working with JSP Forms, CSD430-->
<!--This will show the result of the job application form submission-->
<th%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Job Application Result</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <h1>Application Submitted</h1>
        <table border="1">
            <tr><th>Field</th><th>Value</th></tr>
            <tr><td>First Name</td><td><%= request.getParameter("firstName") %></td></tr>
            <tr><td>Last Name</td><td><%= request.getParameter("lastName") %></td></tr>
            <tr><td>Email</td><td><%= request.getParameter("email") %></td></tr>
        </table>
    </body>
</html>