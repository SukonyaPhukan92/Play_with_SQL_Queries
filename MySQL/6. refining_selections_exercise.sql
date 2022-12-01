/* Select All Story Collections 
Titles  That contain 'stories' */

	select title from books
    WHERE title LIKE '%stories%';
    
/* Find The Longest Book
Print Out the Title and Page Count */

 select title, pages from books
 order by pages desc limit 1;
 
 /* Print a summary containing the title and year, for the 3 most recent books */
 
 select (concat(title,' - ', released_year)) as summary from books
 order by released_year desc limit 3;
 
 /* Find all books with an author_lname that contains a space(" ") */
 
 select title, author_lname from books
 where author_lname like '% %';
 
 /* Find The 3 Books With The Lowest Stock 
 - Select title, year, and stock */
 
 select title, released_year, stock_quantity from books
 order by stock_quantity limit 3;
 
 /* Print title and author_lname, sorted first by author_lname and then by title */
 
 select title, author_lname from books
 order by author_lname, title;
 
 /* Make This Happen...
Sorted Alphabetically By Last Name
 
 +---------------------------------------------+
| yell                                        |
+---------------------------------------------+
| MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVORITE AUTHOR IS MICHAEL CHABON!       |
| MY FAVORITE AUTHOR IS DON DELILLO!          |
| MY FAVORITE AUTHOR IS DAVE EGGERS!          |
| MY FAVORITE AUTHOR IS DAVE EGGERS!          |
| MY FAVORITE AUTHOR IS DAVE EGGERS!          |
| MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
| MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
| MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVORITE AUTHOR IS FREIDA HARRIS!        |
| MY FAVORITE AUTHOR IS DAN HARRIS!           |
| MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
| MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
| MY FAVORITE AUTHOR IS GEORGE SAUNDERS!      |
| MY FAVORITE AUTHOR IS PATTI SMITH!          |
| MY FAVORITE AUTHOR IS JOHN STEINBECK!       |
+---------------------------------------------+
*/

SELECT 
    (UPPER(CONCAT('My favorite author is ',
                    author_fname,
                    ' ',
                    author_lname,
                    '!'))) AS yell
FROM
    books
ORDER BY author_lname;

 