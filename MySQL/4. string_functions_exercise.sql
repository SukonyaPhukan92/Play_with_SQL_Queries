## Reverse and Uppercase the following sentence
## "Why does my cat look at me with such hatred?"

select reverse(upper('Why does my cat look at me with such hatred?'));

## ----------------------------------------------------------------
## Replace spaces in titles with '->'
## title from table books
use book_db;
select replace(title," ", '->') as title from books;

##---------------------------------------------------------------------------------
## Print last_name as forward & backward

select author_lname as forwards, reverse(author_lname) as backwards from books;

##-------------------------------------------------------------------------------
##Print  full name in caps

select concat(upper(author_fname),' ',upper(author_lname)) as full_name_in_caps from books;

##-------------------------------------------------------------------------------
## blurb                                                                    
## 
## | The Namesake was released in 2003                                        
## | Norse Mythology was released in 2016 

select concat(title,' was released in ',released_year) as blurb from books;

##-------------------------------------------------------------------------
## Print book titles and the length of each title

select title, char_length(title) as character_count from books;

##------------------------------------------------------------------------
/* 
| short title   | author      | quantity     |

 | American G... | Gaiman,Neil | 12 in stock  |
| A Heartbre... | Eggers,Dave | 104 in stock | 
*/

SELECT 
    CONCAT(SUBSTR(title, 1, 10), '...') AS short_title,
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock ') AS quantity
FROM
    books;



