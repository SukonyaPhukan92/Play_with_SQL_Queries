use book_db;

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
SELECT DISTINCT author_lname FROM books;

## DISTINCT Full Names
select distinct (concat(author_fname,' ',author_lname)) as author from books;

##-----------------------------------------------------------------
## ORDER BY
SELECT author_lname FROM books ORDER BY author_lname;

SELECT author_lname FROM books ORDER BY author_lname DESC;

SELECT released_year FROM books ORDER BY released_year;

SELECT title, author_fname, author_lname 
FROM books ORDER BY 2;

SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname;

##----------------------------------------------------------------
## LIMIT

SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 5;

SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,5;

SELECT 
    title, released_year
FROM
    books
ORDER BY released_year DESC
LIMIT 5 , 7;

## LIKE

SELECT 
    author_fname
FROM
    books
WHERE
    author_fname LIKE '%da%';
    
SELECT author_fname
FROM books
WHERE author_fname LIKE 'da%';
    
    select author_fname from books
    WHERE stock_quantity LIKE '____';
    
    select title from books
    WHERE title LIKE '%\%%';
    
    select title from books
    WHERE title LIKE '%\_%';
    
SELECT * FROM books
WHERE author_fname LIKE '_a_';
    
   