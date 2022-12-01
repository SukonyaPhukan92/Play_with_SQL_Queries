-- CREATE DATABASE shirts_db;
SHOW DATABASES;
USE shirts_db;
-- select database()

create table shirts (
shirt_id int primary key auto_increment,	
article	varchar(20),
color varchar(20),
shirt_size varchar(10),
last_worn int
);





