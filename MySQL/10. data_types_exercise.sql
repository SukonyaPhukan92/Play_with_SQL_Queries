 /* CREATE TABLE inventory (
    item_name ____________,
    price ________________,
    quantity _____________
);
(price is always < 1,000,000)
*/
use book_db;

CREATE TABLE inventory (
    item_name varchar(20),
    price decimal(10,2) check(price <1000000),
    quantity int
);

/* Print Out The Current Time */
select curtime();

/* Print Out The Current Day Of The Week
(The Number) */
SELECT CURDATE();
 
SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w') + 1;

/* Print Out The Current Day Of The Week
(The Day Name) */
SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');

/* Print out the current day and time using this format:
mm/dd/yyyy */
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

/* Print out the current day and time using this format:
January 2nd at 3:15
April 1st at 10:18 */
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

## -------------------------------------------------------------------------
/* Create a tweets table that stores:
The Tweet content
A Username
Time it was created */
CREATE TABLE tweets(
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
SELECT * FROM tweets;
 
INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
SELECT * FROM tweets;

 

 