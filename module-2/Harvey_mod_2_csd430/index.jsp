<%-- Tabari Harvey, Module 2 Assignment, CSD430 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Books I Enjoyed Reading</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Books I Love</h1>
    <p>This table shows books I have loved. It is categorized by title, author, and year published.</p>

    <%
        String[][] books = {
            {"StarWars Fate of The Jedi: Omen", "Christie Golden", "2009"},
            {"Percy Jackson: The Titan's Curse", "Rick Riordan", "2007"},
            {"Heroes of Olympus: Mark of Athena", "Rick Riordan", "2012"},
            {"Holes", "Louis Sachar", "1998"},
            {"Project Hail Mary", "Andy Weir", "2021"}
        };
    %>

    <table border="1">
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Year</th>
        </tr>
        <%
            for(int i=0; i<books.length; i++){
        %>
        <tr>
            <td><%= books[i][0] %></td>
            <td><%= books[i][1] %></td>
            <td><%= books[i][2] %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
