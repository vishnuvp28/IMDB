-----------------------------IMDB Design a DB for IMDB ---------------------------------------
-- 1. Movie should have multiple media(Video or Image)
-- 2. Movie can belongs to multiple Genre
-- 3. Movie can have multiple reviews and Review can belongs to a user
-- 4. Artist can have multiple skills 5. Artist can perform multiple role in a single film

---------------------------------------------------------------------------------------------
--------------------------------CREATING IMDB DATABASE-----------------------------------------

CREATE TABLE Movie(
    Movie_id INTEGER PRIMARY KEY,
    Movie_name TEXT,
    Movie_artist TEXT
);

INSERT INTO Movie
VALUES(1, "Dasavatharam", "Kamal");

------------------------------------------------------------------------------------------------

CREATE TABLE Movie_details(
    Moviedetails_id INTEGER PRIMARY KEY,
    Movie_id INTEGER FOREIGN KEY,
    Media VARCHAR
);

INSERT INTO Movie_details
VALUES(1, 1, "C:\Dasavatharam poster\Dasavatharam 1.jpg"),
VALUES(2, 1, "C:\Dasavatharam poster\Dasavathaaram 2.jpg"),
VALUES(3, 1, "C:\Dasavatharam poster\Dasavatharam 3.jpg"),
VALUES(4, 1, "C:\Dasavatharam poster\Dasavatharam 4.jpg"),
VALUES(5, 1, "C:\Dasavatharam poster\Dasavatharam 7.jpg"),
VALUES(6, 1, "C:\Dasavatharam poster\Dasavatharam 6.jpg"),
VALUES(7, 1, "C:\Dasavatharam poster\Dasavatharam 7.jpg");

-------------------------------------------------------------------------------------------------

CREATE TABLE Genre(
    Genre_id INTEGER PRIMARY KEY,
    Movie_id INTEGER FOREIGN KEY,
    Movie_genre TEXT
);
INSERT INTO Genre
VALUES(1, 1, "Sci-fi"),
VALUES(2, 1, "Action"),
VALUES(3, 1, "History"),
VALUES(4, 1, "Comedy"),
VALUES(5, 1, "Thriller"),
VALUES(6, 1, "Romance");

-----------------------------------------------------------------------------------------------
CREATE TABLE Artist(
    Artist_id INTEGER PRIMARY KEY,
    Movie_id INTEGER FOREIGN KEY,
    Skills TEXT,
    Role VARCHAR
);
INSERT INTO Artist
VALUES(1, 1, "Actor", "A 12th century Brahmin"),
VALUES(2, 1, "Singer", "A young man"),
VALUES(3, 1, "Dancer", "US President George W. Bush"),
VALUES(4, 1, "Director", "A Sikh man"),
VALUES(5, 1, "Music director", "A Sri Lankan Tamil"),
VALUES(6, 1, "Producer", "An old lady"),
VALUES(7, 1, "Lyricist", "A doctor"),
VALUES(8, 1, "Writer", "A police officer");
INSERT INTO Artist
(Artist_id, Movie_id, Role)
VALUES(9, 1, "A Japanese"),
VALUES(10, 1, "An Afghan");

------------------------------------------------------------------------------------------------

CREATE TABLE Review(
    Rating_id INTEGER PRIMARY KEY,
    Review TEXT
);
INSERT INTO Review
VALUES(1,"Flop"),
VALUES(2,"Average"),
VALUES(3,"Hit"),
VALUES(4,"Blockbuster");

------------------------------------------------------------------------------------------------

CREATE TABLE User_details(
    Reviewer_id INTEGER PRIMARY KEY,
    Movie_id INTEGER FOREIGN KEY,
    User_name TEXT,
    User_email VARCHAR,
    Rating_id INTEGER FOREIGN KEY,
);
INSERT INTO User_details
VALUES(1, 1, "vishnu", "vishnu@gmail.com", 4),
VALUES(2, 1, "priya", "priya@gmail.com", 3),
VALUES(3, 1, "karthi", "karthi@gmail.com", 2),
VALUES(4, 1, "vatchala", "vatchala@gmail.com", 4),
VALUES(5, 1, "chandrasekar", "chandrasekar@gmail.com", 3);