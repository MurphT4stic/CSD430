
-- Tabari Harvey, Module-5-6, CSD430
-- SQL script to create and populate the Tabari_movies_data table
CREATE DATABASE IF NOT EXISTS CSD430;

-- SELECT user, host FROM mysql.user;
DROP USER IF EXISTS 'student1'@'localhost';
CREATE USER 'student1'@'localhost' IDENTIFIED BY 'pass';

-- Grant privileges to the user
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
FLUSH PRIVILEGES;

USE CSD430;

-- Drop the table if it exists and create a new one
DROP TABLE IF EXISTS Tabari_movies_data;
CREATE TABLE Tabari_movies_data (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    release_year INT,
    director VARCHAR(100),
    rating DECIMAL(2,1)
);

-- Insert sample data into Tabari_movies_data table
INSERT INTO Tabari_movies_data (title, genre, release_year, director, rating) VALUES
('The Shawshank Redemption', 'Drama', 1994, 'Frank Darabont', 9.3),
('The Godfather', 'Crime', 1972, 'Francis Ford Coppola', 9.2),
('The Dark Knight', 'Action', 2008, 'Christopher Nolan', 9.0),
('Pulp Fiction', 'Crime', 1994, 'Quentin Tarantino', 8.9),
('Forrest Gump', 'Drama', 1994, 'Robert Zemeckis', 8.8),
('Inception', 'Sci-Fi', 2010, 'Christopher Nolan', 8.7),
('Fight Club', 'Drama', 1999, 'David Fincher', 8.8),
('The Matrix', 'Sci-Fi', 1999, 'Lana Wachowski, Lilly Wachowski', 8.7),
('Goodfellas', 'Crime', 1990, 'Martin Scorsese', 8.7),
('The Lord of the Rings: The Return of the King', 'Fantasy', 2003, 'Peter Jackson', 8.9);