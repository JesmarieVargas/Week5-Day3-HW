--  Task 1: SQL Table Creation

CREATE DATABASE MusicLibrary;

SELECT * FROM artists;
SELECT * FROM albums;
SELECT * FROM genre;

CREATE TABLE artists(
id INT AUTO_INCREMENT PRIMARY KEY,
artist_name VARCHAR(100) NOT NULL
);

CREATE TABLE albums(
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
artist_id INT NOT NULL, 
genre_id INT NOT NULL, 
release_year YEAR NULL,
total_tracks INT NULL
);

CREATE TABLE genre(
id INT AUTO_INCREMENT PRIMARY KEY,
genre_type VARCHAR(50) NULL
);

-- Task 2: SQL Alteration

ALTER TABLE albums ADD duration TIME;

-- Task 3: SQL Foreign Key Establishment

ALTER TABLE albums ADD FOREIGN KEY (genre_id) REFERENCES genre(id);
ALTER TABLE albums ADD FOREIGN KEY (artist_id) REFERENCES artists(id);

