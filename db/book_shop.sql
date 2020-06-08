DROP TABLE books;
DROP TABLE genres;
DROP TABLE publishers;

CREATE TABLE publishers (
    id SERIAL primary key,
    name VARCHAR(255) not null
);

CREATE TABLE genres (
    id SERIAL primary key,
    name VARCHAR(255) not null
);


CREATE TABLE books (
    id SERIAL primary key,
    name VARCHAR(255) not null,
    author VARCHAR(255),
    publisher_id INT REFERENCES publishers(id),
    genre_id INT REFERENCES genres(id),
    price INT,
    stock INT,
    description VARCHAR(1000)

);