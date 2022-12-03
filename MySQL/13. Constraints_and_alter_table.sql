use book_db;

# UNIQUE Constraint
CREATE TABLE contacts (
	name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);
 
INSERT INTO contacts (name, phone)
VALUES ('billybob', '8781213455');

#------------------------------------------------------------ 
# CHECK Constraints
CREATE TABLE users (
	username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 0)
);
 
CREATE TABLE palindromes (
  word VARCHAR(100) CHECK(REVERSE(word) = word)
);

#--------------------------------------------------------------
# Named Constraints
CREATE TABLE users2 (
    username VARCHAR(20) NOT NULL,
    age INT,
    CONSTRAINT age_not_negative CHECK (age >= 0)
);
 
CREATE TABLE palindromes2 (
  word VARCHAR(100),
  CONSTRAINT word_is_palindrome CHECK(REVERSE(word) = word)
);

#--------------------------------------------------------------
# Multiple Column Constraints
CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name , address)
);
 
CREATE TABLE houses (
  purchase_price INT NOT NULL,
  sale_price INT NOT NULL,
  CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);

#----------------------------------------------------------------
# ALTER TABLE - Adding Columns

ALTER TABLE companies 
ADD COLUMN phone VARCHAR(15);
 
ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL DEFAULT 1;

#-----------------------------------------------------------------
# ALTER TABLE - DROPPING COLUMN

ALTER TABLE companies DROP COLUMN phone;

#------------------------------------------------------------------
# ALTER TABLE -Renaming
ALTER TABLE companies
RENAME COLUMN name TO company_name;

#-------------------------------------------------------------------
# ALTER TABLE -Modifying Columns
ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';

#------------------------------------------------------------------
# ALTER TABLE -Constraints
ALTER TABLE houses 
ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);