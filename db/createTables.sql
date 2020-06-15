CREATE TABLE Authors (
  authorId INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR UNIQUE,
  website VARCHAR,
  twitter VARCHAR
);

DROP TABLE demo;

CREATE TABLE Users (
  userId INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR,
  email VARCHAR UNIQUE,
  password VARCHAR
);

ALTER TABLE Users
ADD favoriteGenre;

CREATE TABLE Books (
  bookId INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR,
  authorId INTEGER,
  genre VARCHAR,
  FOREIGN KEY (authorId) REFERENCES Authors(authorId)
);

CREATE TABLE ReadBooks (
  bookId INTEGER,
  userId INTEGER,
  FOREIGN KEY (bookId) REFERENCES Books(bookId),
  FOREIGN KEY (userId) REFERENCES Users(userId)
);
