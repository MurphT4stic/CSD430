<!--Tabari Harvey, Module-8 Assignment Project Part 3, CSD 430-->
<!--This JSP page allows users to select a movie to update--> 
<%@ page import="java.util.*, movie.MovieBean" %>
<html>
<head><title>Movie Update</title></head>
<body>
<h2>Select a Movie to Update</h2>
<form action="updateForm.jsp" method="post">
    <select name="movieId">
        <%
            MovieBean movieBean = new MovieBean();
            List<Integer> movieIds = movieBean.getAllMovieIds();
            for(Integer id : movieIds) {
        %>
            <option value="<%=id%>"><%=id%></option>
        <% } %>
    </select>
    <input type="submit" value="Edit Record">
</form>
</body>
</html>
