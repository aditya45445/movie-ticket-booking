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
('JURASSIC PARK', 100),
('SCORPION', 50),
('IRON MAN 2', 200),
('MANJUMMEL BOYS', 100),
('SCAM:1992', 150);

select * from tickets