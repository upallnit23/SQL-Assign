-- Database Development for a Music Library
-- Task 1:SQL Table Creation
-- Task 2:SQL Alteration
-- Task 3:SQL Foreign Key Establishment

CREATE TABLE Albums (
	id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(40) NOT NULL,
    artist_ID INT ,
    genre_ID INT ,
    release_year YEAR,
    total_tracks INT
    );
    
CREATE TABLE Artists (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(75),
    genre_ID INT,
    album_ID INT,
    FOREIGN KEY (album_ID) REFERENCES Albums (id)
    );
    
CREATE TABLE Genre (
	id INT AUTO_INCREMENT PRIMARY KEY,
    artist_ID INT,
    album_ID INT,
    FOREIGN KEY (album_ID) REFERENCES Albums (id)
    );
ALTER TABLE Albums
ADD tdi_minutes INT;