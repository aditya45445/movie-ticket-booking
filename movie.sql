CREATE DATABASE Movies;

USE Movies;

CREATE TABLE movieLists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    avaiable_seats INT NOT NULL
);

CREATE TABLE tickets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    FOREIGN KEY (movie_id) REFERENCES movieLists(id),
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255)
);

INSERT INTO movieLists (title, avaiable_seats) VALUES 
('KALKI 2998 AD', 100),
('Salaar: Part 1 – Ceasefire', 250),
('K.G.F: Chapter 1', 200),
('K.G.F: Chapter 2', 100),
('MAHARAJA', 150);

select * from tickets
