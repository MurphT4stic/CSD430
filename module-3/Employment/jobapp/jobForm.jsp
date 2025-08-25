<!--Tabari Harvey, Module-3 Assignment, Working with JSP Forms CSD430-->
<!--This page handles the job application form submission-->
<p%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Job Application Form</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<h1>Job Application</h1>
<p class="subtitle">Please fill out the form below to apply for the job.</p>
<!--Information for the job application-->>
<p class="help">Collects your contact information, the position you want, and your experience.</p>
<form action="displayData.jsp" method="post" class="form-grid">

    <label for="fullName">Full Name:</label>
    <input id="fullName" name="fullName" type="text" required placeholder="First Last">
    <label for="email">Email:</label>
    <input id="email" name="email" type="email" required placeholder="example@example.com">
    <label for="phone">Phone Number:</label>
    <input id="phone" name="phone" type="tel" required placeholder="(123) 456-7890">
    <label for="position">Position Applied For *</label>
    <select id="position" name="position" required>
        <option value="">Select a position</option>
        <option value="developer">Developer</option>
        <option value="designer">Designer</option>
        <option value="manager">Manager</option>
    </select>
    <label for="experience">Years of Experience</label>
    <input id="experience" name="experience" type="number" min="0" max="60" step="1" placeholder="0">
    <label>Work Authorization</label>
    <div>
        <label><input type="radio" name="workAuthorization" value="Citizen"> U.S. Citizen</label>
        <label><input type="radio" name="workAuthorization" value="Permanent Resident"> Permanent Resident</label>
        <label><input type="radio" name="workAuthorization" value="Visa Holder"> Visa Holder</label>
    </div>
    <label for="summary">Brief Summary</label>
    <textarea id="summary" name="summary" rows="4" required placeholder="Tell us about yourself..."></textarea>
    <div class="actions">
        <input type="submit" value="Submit Application" class="primary">
        <button type="reset" class="secondary">Clear</button>
    </div>  
</form>
</body>
</html>
