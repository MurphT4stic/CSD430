//Tabari Harvey, Module-5-6, CSD430 
// JavaBean class for Movie

//package movies;

import java.io.Serializable;

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
}


