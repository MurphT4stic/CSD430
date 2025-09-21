<!--Tabari Harvey, Module-8 Assignment Project Part 3, CSD 430-->
<!--This JSP page processes the movie update form submission-->
<%@ page import="movie.MovieBean" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String title = request.getParameter("title");
    String genre = request.getParameter("genre");
    String director = request.getParameter("director");
    int year = Integer.parseInt(request.getParameter("year"));
    double rating = Double.parseDouble(request.getParameter("rating"));

    MovieBean movie = new MovieBean();
    movie.updateMovie(id, title, genre, director, year, rating);
    movie = movie.getMovieById(id);
%>
<html>
<head><title>Updated Movie</title></head>
<body>
<h2>Movie Record Updated</h2>
<table border="1">
    <tr>
        <th>ID</th><th>Title</th><th>Genre</th><th>Director</th><th>Year</th><th>Rating</th>
    </tr>
    <tr>
        <td><%=movie.getId()%></td>
        <td><%=movie.getTitle()%></td>
        <td><%=movie.getGenre()%></td>
        <td><%=movie.getDirector()%></td>
        <td><%=movie.getYear()%></td>
        <td><%=movie.getRating()%></td>
    </tr>
</table>
</body>
</html>
