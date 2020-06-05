DROP TABLE books;
DROP TABLE publishers;
DROP TABLE genres;

CREATE TABLE genres (
    id SERIAL primary key,
    genre VARCHAR(255)
);
CREATE TABLE publishers (
    id SERIAL primary key,
    name VARCHAR(255),
    stock INT
);

CREATE TABLE books (
    id SERIAL primary key,
    name VARCHAR(255),
    genre_id INT REFERENCES genres(id),
    publisher_id INT REFERENCES publishers(id)
);