use shirts_db;
insert into shirts(article, color, shirt_size,last_worn) 
values
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

## Get All That Data In There With a single line
select * from shirts;

## Add A New Shirt
## Purple polo shirt, size M last worn 50 days ago

insert into shirts(article, color, shirt_size,last_worn) 
value
('polo shirt', 'purple', 'M', 50);

## SELECT all shirts But Only Print Out Article and Color
select article, color from shirts;

## SELECT all medium shirts 
## Print Out Everything But shirt_id

select article, color, shirt_size,last_worn 
from shirts
where shirt_size ='M';

## Update all polo shirts
## Change their size to L
update shirts set shirt_size='L'
where article='polo shirt';

## Update the shirt last worn 15 days ago
## Change last_worn to 0
update shirts set last_worn =0
where last_worn =15;

## Update all white shirts
## Change size to 'XS' and color to 'off white'
UPDATE shirts 
SET 
    color = 'off white',
    shirt_size = 'XS'
WHERE
    color = 'white';

## Delete all old shirts
## Last worn 200 days ago
SELECT 
    *
FROM
    shirts;

delete from shirts
where last_worn >=200;

## Delete all tank tops
delete from shirts
where article='tank top';

## Delete all shirts
delete from shirts;

##Drop the entire shirts table
drop table shirts;

