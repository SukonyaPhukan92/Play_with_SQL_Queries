## Count Basics

# How many books are in the database?
SELECT COUNT(*) FROM books;
 
# How many author_lnames?
SELECT COUNT(author_lname) FROM books;
 
# How many DISTINCT author_lnames?
SELECT COUNT(DISTINCT author_lname) FROM books;

##--------------------------------------------------------------------------------
## GROUP BY

SELECT author_lname, COUNT(*) 
FROM books
GROUP BY author_lname;
 
SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written DESC;

## -----------------------------------------------------------------
## MIN and MAX Basics

# Find the longest book
SELECT MAX(pages) FROM books;
 
SELECT MIN(author_lname) FROM books;

# What if I want the title of the longest book?
SELECT MAX(pages), title
FROM books;

##-----------------------------------------------------------------------
## Subqueries

# What if I want the title of the longest book?
SELECT title, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
 
SELECT MIN(released_year) FROM books;
 
SELECT title, released_year FROM books 
WHERE released_year = (SELECT MIN(released_year) FROM books);

## ---------------------------------------------------------------------
## Grouping by Multiple Columns

SELECT author_fname, author_lname, COUNT(*) 
FROM books 
GROUP BY author_lname, author_fname;
 
 
SELECT CONCAT(author_fname, ' ', author_lname) AS author,  COUNT(*)
FROM books
GROUP BY author;

## -------------------------------------------------------------
## MIN and MAX with GROUP BY

SELECT author_lname, MIN(released_year) FROM books GROUP BY author_lname;
 
SELECT author_lname, MAX(released_year), MIN(released_year) FROM books GROUP BY author_lname;
 
SELECT 
	author_lname, 
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release,
      MAX(pages) AS longest_page_count
FROM books GROUP BY author_lname;
 
 
SELECT 
	author_lname, 
        author_fname,
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release
FROM books GROUP BY author_lname, author_fname;

##---------------------------------------------------------
## SUM

# Sum all pages in the entire database
SELECT SUM(pages) FROM books;
 
SELECT author_lname, COUNT(*), SUM(pages)
FROM books
GROUP BY author_lname;

## --------------------------------------------------------------------------
## AVG

SELECT AVG(pages) FROM books;
 
 # Calculate the average released_year across all books
SELECT AVG(released_year) FROM books;
 
 # Calculate the average stock quantity for books released in the same year
SELECT 
    released_year, 
    AVG(stock_quantity), 
    COUNT(*) FROM books
GROUP BY released_year;

## ------------------------------------------------------------------
## 