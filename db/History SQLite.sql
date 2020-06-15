--- 15-06-2020 12:09:12
--- SQLite
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

--- 15-06-2020 12:12:09
--- SQLite
INSERT INTO Authors (
name,
website,
twitter
)
VALUES (
'Stephen King',
'http://www.stephenking.com',
 ''
),
(
'Susan Elizabeth Phillips',
'http://susanelizabethphillips.com',
 'SEPAuthor'
),
(
'Gail Carriger',
'http://gailcarriger.com',
'gailcarriger'
  ),
 (
 'J.K. Rowling',
   'http://www.jkrowling.com',
   'jk_rowling'
 ),
 (
 'Jane Austen',
 'http://www.janeausten.org/',
  ''
 );

INSERT INTO Users (
  name,
  email,
  favoriteGenre
)
VALUES (
  'Fred Jones',
  'fj@test.com',
  'suspense'
),
(
  'Velma Jackson',
  'vj@test.com',
  'non-fiction'
),
(
  'Shaggy Smith',
  'ss@test.com',
  'graphic novels'
),
(
  'Daphne Dukes',
  'dd@test.com',
  'romance'
),
(
  'Scooby Doo',
  'sd@test.com',
  'steam punk'
);

--- 15-06-2020 12:12:30
--- SQLite
SELECT * FROM Authors;
