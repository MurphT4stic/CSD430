<!--Tabari Harvey, Module-8 Assignment Project Part 4, CSD 430-->
<!--This JSP page displays the form for updating a movie record-->
<%@ page import="movie.MovieBean" %>
<%
    int movieId = Integer.parseInt(request.getParameter("movieId"));
    MovieBean movie = new MovieBean();
    movie = movie.getMovieById(movieId);
%>
<html>
<head><title>Update Movie</title></head>
<body>
<h2>Update Movie Record</h2>
<form action="processUpdate.jsp" method="post">
    Movie ID (not editable): <%=movie.getId()%> <br><br>
    <input type="hidden" name="id" value="<%=movie.getId()%>">

    Title: <input type="text" name="title" value="<%=movie.getTitle()%>"><br>
    Genre: <input type="text" name="genre" value="<%=movie.getGenre()%>"><br>
    Director: <input type="text" name="director" value="<%=movie.getDirector()%>"><br>
    Year: <input type="text" name="year" value="<%=movie.getYear()%>"><br>
    Rating: <input type="text" name="rating" value="<%=movie.getRating()%>"><br><br>

    <input type="submit" value="Update Movie">
</form>
</body>
</html>