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

--- 15-06-2020 12:47:32
--- SQLite
/***** ERROR ******
near "s": syntax error
 -----
INSERT INTO Books (
  name,
  authorId,
  genre
)
VALUES (
  'The Shining',
  1,
  'Horror'
),
(
  'The Stand',
  1,
  'Horror'
),
(
  'The Gunslinger',
  1,
  'Fantasy'
),
(
  'Misery',
  1,
  'Horror'
),
(
  'Pet Sematary',
  1,
  'Horror'
),
(
  'Carrie',
  1,
  'Horror'
),
(
  'It Had to Be You',
  2,
  'Romance'
),
(
  'Natural Born Charmer',
  2,
  'Romance'
),
(
  'Match Me If You Can',
  2,
  'Romance'
),
(
  'Call Me Irresistable',
  2,
  'Romance'
),
(
  'This Heart of Mine',
  2,
  'Romance'
),
(
  'Soulless',
  3,
  'Science Fiction'
),
(
  'Etiquette and Espionage',
  3,
  'Science Fiction'
),
(
  'Prudence',
  3,
  'Science Fiction'
),
(
  'Waistcoats and Weaponry',
  3,
  'Science Fiction'
),
(
  'Timeless',
  3,
  'Science Fiction'
),
(
  'Harry Potter and the Sorcerer\'s Stone',
  4,
  'Fantasy'
),
(
  'Harry Potter and the Prisoner From Azkaban',
  4,
  'Fantasy'
),
(
  'Harry Potter and the Goblet of Fire',
  4,
  'Fantasy'
),
(
  'Harry Potter and the Half-Blood Prince',
  4,
  'Fantasy'
),
(
  'Harry Potter and the Deathly Hallows',
  4,
  'Fantasy'
),
(
  'Emma',
  5,
  'Romance'
),
(
  'Pride and Prejudice',
  5,
  'Romance'
),
(
  'Sense and Sensibility',
  5,
  'Romance'
),
(
  'Persuasion',
  5,
  'Romance'
),
(
  'Mansfield Park',
  5,
  'Romance'
);
*****/

--- 15-06-2020 12:48:58
--- SQLite
INSERT INTO Books (
  name,
  authorId,
  genre
)
VALUES (
  'The Shining',
  1,
  'Horror'
),
(
  'The Stand',
  1,
  'Horror'
),
(
  'The Gunslinger',
  1,
  'Fantasy'
),
(
  'Misery',
  1,
  'Horror'
),
(
  'Pet Sematary',
  1,
  'Horror'
),
(
  'Carrie',
  1,
  'Horror'
),
(
  'It Had to Be You',
  2,
  'Romance'
),
(
  'Natural Born Charmer',
  2,
  'Romance'
),
(
  'Match Me If You Can',
  2,
  'Romance'
),
(
  'Call Me Irresistable',
  2,
  'Romance'
),
(
  'This Heart of Mine',
  2,
  'Romance'
),
(
  'Soulless',
  3,
  'Science Fiction'
),
(
  'Etiquette and Espionage',
  3,
  'Science Fiction'
),
(
  'Prudence',
  3,
  'Science Fiction'
),
(
  'Waistcoats and Weaponry',
  3,
  'Science Fiction'
),
(
  'Timeless',
  3,
  'Science Fiction'
),
(
  'Harry Potter and the Sorcerer''s Stone',
  4,
  'Fantasy'
),
(
  'Harry Potter and the Prisoner From Azkaban',
  4,
  'Fantasy'
),
(
  'Harry Potter and the Goblet of Fire',
  4,
  'Fantasy'
),
(
  'Harry Potter and the Half-Blood Prince',
  4,
  'Fantasy'
),
(
  'Harry Potter and the Deathly Hallows',
  4,
  'Fantasy'
),
(
  'Emma',
  5,
  'Romance'
),
(
  'Pride and Prejudice',
  5,
  'Romance'
),
(
  'Sense and Sensibility',
  5,
  'Romance'
),
(
  'Persuasion',
  5,
  'Romance'
),
(
  'Mansfield Park',
  5,
  'Romance'
);

--- 15-06-2020 12:49:19
--- SQLite
SELECT * FROM Books;

--- 15-06-2020 12:51:22
--- SQLite
/***** ERROR ******
SELECTs to the left and right of UNION ALL do not have the same number of result columns
 -----
SELECT *
FROM Books
union ALL
SELECT *
FROM Users;
*****/

--- 15-06-2020 12:51:55
--- SQLite
SELECT bookid, name
FROM Books
union ALL
SELECT userid, name
FROM Users;

--- 15-06-2020 12:59:03
--- SQLite
INSERT INTO ReadBooks (
  userId,
  bookId
)
VALUES (
  1,
  1
),
(
  1,
  6
),
(
  2,
  13
),
(
  2,
  23
),
(
  2,
  7
),
(
  3,
  13
),
(
  3,
  17
),
(
  3,
  18
),
(
  3,
  15
),
(
  3,
  19
),
(
  4,
  22
),
(
  4,
  23
),
(
  4,
  24
),
(
  4,
  25
),
(
  4,
  26
),
(
  5,
  3
),
(
  5,
  5
),
(
  5,
  16
),
(
  5,
  17
),
(
  5,
  23
);


SELECT Users.name, Books.name
FROM ReadBooks
JOIN Users ON Users.userid == ReadBooks.userid
JOIN Books on Books.bookid == ReadBooks.bookid

SELECT Users.name, Books.name, Authors.name
FROM ReadBooks
JOIN Users ON Users.userid == ReadBooks.userid
JOIN Books ON Books.bookid == ReadBooks.bookid
Join Authors ON Authors.authorid == Books.authorid

SELECT Users.name, Books.name, Authors.name
FROM ReadBooks
JOIN Users ON Users.userid == ReadBooks.userid
JOIN Books ON Books.bookid == ReadBooks.bookid AND Books.authorid == 5
Join Authors ON Authors.authorid == Books.authorid

SELECT Users.name, Books.name, Authors.name, Authors.website, Authors.twitter, Books.genre, Users.favoritegenre
FROM ReadBooks
JOIN Users ON Users.userid == ReadBooks.userid
JOIN Books ON Books.bookid == ReadBooks.bookid
Join Authors ON Authors.authorid == Books.authorid
ORDER By Authors.name,
	Books.name;
