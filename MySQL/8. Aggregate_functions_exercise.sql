use book_db;

/*How many titles contain "the"? */
SELECT COUNT(*) FROM books 
WHERE title LIKE '%the%';

/* COUNT how many books each author has written */
select concat(author_fname,' ', author_lname) as author, count(*) from books
group by author;

/* Without Group By, Find the minimum released_year */
select min(released_year)
from books;

/* Find the year each author published their first book */
SELECT author_fname, 
       author_lname, 
       Min(released_year) 
FROM   books 
GROUP  BY author_lname, 
          author_fname; 
          
/* Find the longest page count for each author */
select author_fname, author_lname, max(pages) from books
group by author_fname, author_lname
order by author_fname;

SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
         author_fname;

/* SUM + GROUP BY
 Sum all pages each author has written */
 SELECT author_fname,
       author_lname,
       Sum(pages)
FROM books
GROUP BY
    author_lname,
    author_fname;
    
/* Print the number of books in the database */
SELECT COUNT(*) FROM books;
 
 /*Print out how many books were released in each year */
SELECT released_year, COUNT(*) 
FROM books GROUP BY released_year;
 
 /* Find the average released_year for each author*/
SELECT AVG(released_year) 
FROM books GROUP BY author_lname, author_fname;
 
 /* Find the full name of the author who wrote the longest book*/
SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
 
SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
ORDER BY pages DESC LIMIT 1;
 
 /* 
 +------+---------+-----------+
| year | # books | avg pages |
+------+---------+-----------+
| 1945 |       1 |  181.0000 |
| 1981 |       1 |  176.0000 |
| 1985 |       1 |  320.0000 |
| 1989 |       1 |  526.0000 |
| 1996 |       1 |  198.0000 |
| 2000 |       1 |  634.0000 |
| 2001 |       3 |  443.3333 |
| 2003 |       2 |  249.5000 |
| 2004 |       1 |  329.0000 |
| 2005 |       1 |  343.0000 |
| 2010 |       1 |  304.0000 |
| 2012 |       1 |  352.0000 |
| 2013 |       1 |  504.0000 |
| 2014 |       1 |  256.0000 |
| 2016 |       1 |  304.0000 |
| 2017 |       1 |  367.0000 |
+------+---------+-----------+
 */
SELECT 
    released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year;


