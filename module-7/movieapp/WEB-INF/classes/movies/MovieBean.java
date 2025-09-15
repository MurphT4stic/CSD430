

//Tabari Harvey, Module-7 Assignment, CSD 430
//This JavaBean class represents a movie entity and provides methods to interact with the database.
// package movies;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MovieBean implements Serializable {
    private int movie_id;
    private String title;
    private String genre;
    private int release_year;
    private String director;
    private double rating;

    // Default constructor
    public MovieBean() {}

    // Getters and setters
    public int getMovie_id() { return movie_id; }
    public void setMovie_id(int movie_id) { this.movie_id = movie_id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public int getRelease_year() { return release_year; }
    public void setRelease_year(int release_year) { this.release_year = release_year; }

    public String getDirector() { return director; }
    public void setDirector(String director) { this.director = director; }

    public double getRating() { return rating; }
    public void setRating(double rating) { this.rating = rating; }

    // Get all movie keys for dropdown
    public static List<MovieBean> getMovieKeys() throws Exception {
        List<MovieBean> movies = new ArrayList<>();
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/CSD430", "student1", "pass")) {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT movie_id, title FROM Tabari_movies_data");
            while (rs.next()) {
                MovieBean movie = new MovieBean();
                movie.setMovie_id(rs.getInt("movie_id"));
                movie.setTitle(rs.getString("title"));
                movies.add(movie);
            }
        }
        return movies;
    }

    // Get a single movie by ID
    public static MovieBean getMovieById(int id) throws Exception {
        MovieBean movie = null;
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/CSD430", "student1", "pass")) {
            PreparedStatement ps = conn.prepareStatement(
                "SELECT * FROM Tabari_movies_data WHERE movie_id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                movie = new MovieBean();
                movie.setMovie_id(rs.getInt("movie_id"));
                movie.setTitle(rs.getString("title"));
                movie.setGenre(rs.getString("genre"));
                movie.setRelease_year(rs.getInt("release_year"));
                movie.setDirector(rs.getString("director"));
                movie.setRating(rs.getDouble("rating"));
            }
        }
        return movie;
    }
}
