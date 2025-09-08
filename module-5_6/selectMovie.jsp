<!-- Tabari Harvey, Module-5-6, CSD430 -->
<%@ page import="java.sql.*" %>
<%@ page import="movies.MovieBean" %>
<html>
<head><title>Select a Movie</title></head>
<body>
<h2>Select a Movie</h2>

<form action="displayMovie.jsp" method="post">
    <select name="movie_id">
        <%
            try {
                // <!--Load JDBC driver and connect-->
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/CSD430", "student1", "pass");

                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT movie_id, title FROM Tabari_movies_data");

                // <!--Loop through result set and build beans-->
                while (rs.next()) {
                    MovieBean movie = new MovieBean();
                    movie.setMovie_id(rs.getInt("movie_id"));
                    movie.setTitle(rs.getString("title"));

                    // <!--Use bean getters for dropdown values-->
        %>
                    <option value="<%= movie.getMovie_id() %>"><%= movie.getTitle() %></option>
        <%
                }
                conn.close();
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            }
        %>
    </select>
    <input type="submit" value="Show Movie">
</form>

</body>
</html>

