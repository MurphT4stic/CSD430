<!-- Tabari Harvey, Module-5-6, CSD430 -->
<%@ page import="java.sql.*" %>
<%@ page import="movies.MovieBean" %>
<html>
<head><title>Movie Details</title></head>
<body>
<h2>Movie Details</h2>

<%
    // Get the movie_id from the request
    String movieId = request.getParameter("movie_id");

    try {
        // Load JDBC driver and connect to DB
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/CSD430", "student1", "pass");

        // Use prepared statement to prevent SQL injection
        PreparedStatement ps = conn.prepareStatement(
            "SELECT * FROM Tabari_movies_data WHERE movie_id=?");
        ps.setInt(1, Integer.parseInt(movieId));
        ResultSet rs = ps.executeQuery();

        // If we have a match, populate the MovieBean
        if (rs.next()) {
            MovieBean movie = new MovieBean();
            movie.setMovie_id(rs.getInt("movie_id"));
            movie.setTitle(rs.getString("title"));
            movie.setGenre(rs.getString("genre"));
            movie.setRelease_year(rs.getInt("release_year"));
            movie.setDirector(rs.getString("director"));
            movie.setRating(rs.getDouble("rating"));

            // Attach bean to request (not strictly needed here,
            // but useful if forwarding to another JSP)
            request.setAttribute("movie", movie);
%>

<!-- Display the MovieBean data in an HTML table -->
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Genre</th>
            <th>Year</th>
            <th>Director</th>
            <th>Rating</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%= movie.getMovie_id() %></td>
            <td><%= movie.getTitle() %></td>
            <td><%= movie.getGenre() %></td>
            <td><%= movie.getRelease_year() %></td>
            <td><%= movie.getDirector() %></td>
            <td><%= movie.getRating() %></td>
        </tr>
    </tbody>
</table>

<%
        }
        conn.close();
    } catch(Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>

</body>
</html>
