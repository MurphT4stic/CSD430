<!--Tabari Harvey, Module-3 Assignment, Working with JSP Forms CSD430-->
<!--This page handles the job application form submission-->
<%@ page contentType="text/html; charset=UFT-8" pageEncoding="UTF-8" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Display Data</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body> 
    <h1>Submitted Job Application</h1>
    <p class="subtitle">Here is the information you submitted:</p>

    <%-- Display the submitted data here --%>
    <th%
    String fullName = request.getParameter("fullName");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String position = request.getParameter("position");
    String experience = request.getParameter("experience");
    String workAuthorization = request.getParameter("workAuthorization");
    String summary = request.getParameter("summary");   

    String nz ="";
    fullName = (fullName  ==null) ? nz : fullName;
    email = (email == null) ? nz : email;
    phone = (phone == null) ? nz : phone;
    position = (position == null) ? nz : position;
    experience = (experience == null) ? nz : experience;
    workAuthorization = (workAuthorization == null) ? nz : workAuthorization;
    summary = (summary == null) ? nz : summary;

    %>

    <table class="table">
        <tr><th>Field</th><th>Your Input</th></tr>
        <tr><td>Full Name</td><td><%= fullName %></td></tr>
        <tr><td>Email</td><td><%= email %></td></tr>
        <tr><td>Phone</td><td><%= phone %></td></tr>
        <tr><td>Position</td><td><%= position %></td></tr>
        <tr><td>Experience</td><td><%= experience %></td></tr>
        <tr><td>Work Authorization</td><td><%= workAuthorization %></td></tr>
        <tr><td>Summary</td><td><pre style="white-space: pre-wrap;"><%= summary %></pre></td></tr>
    </table>

    <p class="help">Need to make changes? <a href="jobForm.jsp">Go back to the form</a>.</p>
</body>
</html>