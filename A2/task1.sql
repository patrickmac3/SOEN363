-- Active: 1678144938046@@localhost@3306@movies

CREATE DATABASE MOVIES;

-- Movie Entity make
CREATE TABLE Movies.Movie(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    imdb_id VARCHAR(9) NOT NULL,
    title VARCHAR(50) NOT NULL,
    description text NOT NULL,
    rating VARCHAR(10) NOT NULL,
    release_year YEAR NOT NULL,
    runtime INT NOT NULL,
    AKAs VARCHAR(100) NOT NULL,
    number_of_reviews INT NOT NULL,
    UNIQUE (imdb_id)
);


-- Person Entity -- ADD auto increment 
CREATE TABLE Movies.Person(
    id INT NOT NULL AUTO_INCREMENT,
    imdb_id VARCHAR(9) NOT NULL,
    name VARCHAR(50) not null,
    UNIQUE(imdb_id),
    CONSTRAINT PK_Person PRIMARY KEY (id,imdb_id)
);

-- Actor entity ISA Person 
CREATE TABLE Movies.Actor(
    id INT NOT NULL,
    imdb_id VARCHAR(9) PRIMARY KEY,
    UNIQUE(imdb_id),
    FOREIGN KEY (id, imdb_id) REFERENCES Person(id, imdb_id) ON DELETE CASCADE
);


-- Director Entity ISA Person 
CREATE TABLE Movies.Director(
    id INT NOT NULL,
    imdb_id VARCHAR(9) PRIMARY KEY,
    FOREIGN KEY (id, imdb_id) REFERENCES Person(id, imdb_id) ON DELETE CASCADE
);

-- Creator Entity ISA Person 
CREATE TABLE Movies.Creator(
    id INT NOT NULL,
    imdb_id VARCHAR(9) PRIMARY KEY,
    FOREIGN KEY (id, imdb_id) REFERENCES Person(id, imdb_id) ON DELETE CASCADE
);


-- Person - Movie Relation
CREATE TABLE Movies.Acts_in(
    actor_id VARCHAR(9),
    movie_id VARCHAR(9) not NULL,
    persona VARCHAR(50) not NULL,
    FOREIGN KEY (actor_id) REFERENCES Actor(imdb_id) ON DELETE SET NULL,
    FOREIGN KEY (movie_id) REFERENCES Movie(imdb_id) ON DELETE CASCADE
);


CREATE TABLE Movies.Directed(
    director_id VARCHAR(9),
    movie_id VARCHAR(9) not NULL,
    FOREIGN KEY (director_id) REFERENCES Director(imdb_id) ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES Movie(imdb_id) ON DELETE CASCADE
);

CREATE TABLE Movies.Created(
    creator_id VARCHAR(9),
    movie_id VARCHAR(9) not NULL,
    FOREIGN KEY (creator_id) REFERENCES Creator(imdb_id) ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES Movie(imdb_id) ON DELETE CASCADE
);


-- Country entity

CREATE TABLE Movies.Country(
    country VARCHAR(50) PRIMARY KEY,
    country_code VARCHAR(10),
    UNIQUE (country)
);

CREATE TABLE Movies.MovieCountry(
    country VARCHAR(50) not null,
    movie_id VARCHAR(9) not null,
    UNIQUE (country, movie_id),
    FOREIGN KEY (country) REFERENCES Country(country)
                         ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES Movie(imdb_id)
                         ON DELETE CASCADE
);



-- Genre Entity
CREATE TABLE Movies.Genre(
    id INT AUTO_INCREMENT PRIMARY KEY,
    genre VARCHAR(50),
    UNIQUE (genre)
);



CREATE TABLE Movies.MovieGenre(
    genre_id INT NOT NULL,
    movie_id VARCHAR(9) not null,
    UNIQUE (genre_id, movie_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(id)
                       ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES Movie(imdb_id)
                       ON DELETE CASCADE
);


-- Keyword Entity 
CREATE TABLE Movies.Keyword(
    id INT AUTO_INCREMENT PRIMARY KEY,
    keyword VARCHAR(50),
    UNIQUE (keyword)
);

CREATE TABLE Movies.MovieKeyword(
    keyword_id INT NOT NULL,
    movie_id VARCHAR(9) not null,
    UNIQUE (keyword_id, movie_id),
    FOREIGN KEY (keyword_id) REFERENCES Keyword(id)
                       ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES Movie(imdb_id)
                       ON DELETE CASCADE
);

-- Content Rating
CREATE TABLE Movies.ContentRating(
    contentRating VARCHAR(5) NOT NULL,
    movie_id VARCHAR(9) not null,
    FOREIGN KEY (movie_id) REFERENCES Movie(imdb_id)
                          ON DELETE CASCADE
);

-- Language
CREATE TABLE Movies.Lan(
    lan VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Movies.MovieLan(
    movie_id VARCHAR(9) not null,
    lan VARCHAR(50) not null,
    UNIQUE (movie_id, lan),
    FOREIGN KEY (lan) REFERENCES Lan(lan) ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES Movie(imdb_id) ON DELETE CASCADE
);
