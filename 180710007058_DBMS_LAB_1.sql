DROP TABLE IF EXISTS EMPLOYEE;
DROP TABLE IF EXISTS PROJECT;
DROP TABLE IF EXISTS WORKS_ON;
DROP TABLE IF EXISTS DEPENDENT;
DROP TABLE IF EXISTS DEPARTMENT;


/*Creating table */

CREATE TABLE DEPARTMENT(                   /*DEPARTMENT (dept_number, dept_name, location, manager_ssn) */
dept_number INTEGER PRIMARY KEY,
dept_name VARCHAR(20),
location VARCHAR(10),
manager_ssn INTEGER

);


CREATE TABLE EMPLOYEE (                  /*EMPLOYEE (ssn, name, address, salary, birthdate, supervisor_ssn, department_number)*/
  ssn INTEGER PRIMARY KEY,
  e_name VARCHAR(15) NOT NULL,
  Address VARCHAR(15),
  Salary DECIMAL(10,2),
  BirthDate DATE,
  supervisor_ssn INTEGER,
  department_number INTEGER,
  FOREIGN KEY(department_number) REFERENCES DEPARTMENT(dept_number)
);

CREATE TABLE PROJECT(                  /*PROJECT (project_number, project_name, location, department_number)*/
  project_number INTEGER(7) NOT NULL UNIQUE,
  project_name VARCHAR(25) NOT NULL,
  location VARCHAR(15),
  department_number INTEGER,
  FOREIGN KEY(department_number) REFERENCES DEPARTMENT(dept_number)
);

CREATE TABLE WORKS_ON(                  /*WORKS_ON (ssn, project_number, hours)*/
  ssn INTEGER,
  project_no INTEGER(6),
  hours INTEGER,
  PRIMARY KEY (ssn, project_no) 
);

CREATE TABLE DEPENDENT(                  /*DEPENDENT (dependent_name, employee_ssn, sex, birthdate, relationship)*/
  dependent_name VARCHAR(15),
  employee_ssn INTEGER ,
  sex VARCHAR(7),
  birthdate DATE ,
  relationship VARCHAR(12),
  PRIMARY KEY (dependent_name, employee_ssn) 
);


/*Inserting values to the table department */
 /*DEPARTMENT (dept_number, dept_name, location, manager_ssn) */
 
INSERT INTO DEPARTMENT VALUES ( 1, 'CS','Udaygiri',101);
INSERT INTO DEPARTMENT VALUES ( 2, 'Botany','Arawali',202);
INSERT INTO DEPARTMENT VALUES ( 3, 'Music','Shiwalik',307 );
INSERT INTO DEPARTMENT VALUES ( 4, 'Mathematics','Udaygiri',409 );
INSERT INTO DEPARTMENT VALUES ( 5, 'Chemistry','Nilgiri',514 );
INSERT INTO DEPARTMENT VALUES ( 6, 'Quantrum Physics','Udaygiri',615);
INSERT INTO DEPARTMENT VALUES ( 7, 'IT', 'Udaygiri', 722);
INSERT INTO DEPARTMENT VALUES ( 8, 'Finance', 'Arawali', 8038);
INSERT INTO DEPARTMENT VALUES ( 9, 'Biology', 'Nilgiri', 9046);
INSERT INTO DEPARTMENT VALUES ( 10, 'Marketing', 'Shiwalik', 1049);
SELECT * FROM DEPARTMENT;                                                    /*Display all from table department */

/* Insert values into table instructor */
 /*EMPLOYEE (ssn, name, address, salary, birthdate, supervisor_ssn, department_number)*/

INSERT INTO EMPLOYEE VALUES ( 101, 'Marina', 'Assam', 76000.75, '1987-12-01', 101,1 );
INSERT INTO EMPLOYEE VALUES ( 202, 'Jackson', 'Delhi', 62000, '1982-10-11', 202,2 );
INSERT INTO EMPLOYEE VALUES ( 103, 'Michael', 'Goa', 54000, '1986-10-21', 101,1 );
INSERT INTO EMPLOYEE VALUES ( 104, 'John', 'Assam', 74200.75, '1987-07-04', 101,1 );
INSERT INTO EMPLOYEE VALUES ( 505, 'Javed', 'Kerela', 62000, '1997-02-01', 505,5 );
INSERT INTO EMPLOYEE VALUES ( 606, 'Marie', 'Goa', 54000, '1989-10-24', 606,6 );
INSERT INTO EMPLOYEE VALUES ( 307, 'Oliva', 'Assam', 76003.75, '1988-08-19', 307,3 );
INSERT INTO EMPLOYEE VALUES ( 208, 'Jackie', 'Jaipur', 62000, '1989-12-31', 101,2 );
INSERT INTO EMPLOYEE VALUES ( 409, 'Hanky', 'Goa', 53900, '1992-06-28', 409,4);
INSERT INTO EMPLOYEE VALUES ( 110, 'Smartina','Kanpur',69008.75,'1994-10-01', 101,1 );
INSERT INTO EMPLOYEE VALUES ( 211, 'Zara','Delhi',62300,'1989-05-01', 202,2 );
INSERT INTO EMPLOYEE VALUES ( 112, 'Mimisa', 'Goa', 58405, '1987-12-01', 101,1 );
INSERT INTO EMPLOYEE VALUES ( 514, 'Javed', 'Kerela', 62009, '1988-08-26', 505,5 );
INSERT INTO EMPLOYEE VALUES ( 615, 'Mariya', 'Jaipur', 54000, '2000-12-25', 606 ,6 );
INSERT INTO EMPLOYEE VALUES ( 316, 'Anjelika', 'West Bengal', 78507.75,'1983-10-11', 307 , 3 );
INSERT INTO EMPLOYEE VALUES ( 217, 'Jackie', 'Jaipur', 62000,'2002-08-11', 202 ,8 );
INSERT INTO EMPLOYEE VALUES ( 418, 'Kanetkar', 'Goa', 54000,'1986-06-01', 418 , 4);
INSERT INTO EMPLOYEE VALUES ( 919, 'John ', 'Delhi', 76003.75, '1988-08-19', 307,9);
INSERT INTO EMPLOYEE VALUES ( 820, 'Jackie', 'Jaipur', 62000, '2000-12-31', 101, 8);
INSERT INTO EMPLOYEE VALUES ( 421, 'Hanky', 'Goa', 53900, '1992-06-28', 409,4);
INSERT INTO EMPLOYEE VALUES ( 1022, 'John Smith','Kanpur',69008.75,'2001-10-01', 101,10 );
INSERT INTO EMPLOYEE VALUES ( 723, 'Zara','Delhi',62300,'1989-05-01', 202,7 );
INSERT INTO EMPLOYEE VALUES ( 824, 'Mimisa', 'Goa', 58405, '1987-12-01', 101,8 );
INSERT INTO EMPLOYEE VALUES ( 1025, 'Johnson', 'Assam', 79100.75, '2001-04-03', 1013,10);
INSERT INTO EMPLOYEE VALUES ( 526, 'Javed', 'Kerela', 62009, '1988-08-26', 505,5 );
INSERT INTO EMPLOYEE VALUES ( 927, 'Mariya', 'Jaipur', 54000, '2002-12-25', 606 ,9 );
INSERT INTO EMPLOYEE VALUES ( 728, 'Anjelika', 'West Bengal', 71507.75,'2001-10-11', 307 , 7 );
INSERT INTO EMPLOYEE VALUES ( 1029, 'Jackie', 'Jaipur', 62000,'1984-08-11', 202 ,10 );
INSERT INTO EMPLOYEE VALUES ( 730, 'Kanetkar', 'Goa', 54000,'2000-06-01', 418 , 7);

 SELECT * FROM EMPLOYEE;												/* Display all from table instructor */

/* Insert values into table PROJECT */
/*PROJECT (project_number, project_name, location, department_number)*/

INSERT INTO PROJECT VALUES ( 58101, 'Sentimal Analysis','SHILLONG',1);
INSERT INTO PROJECT VALUES ( 58202, 'Cloning 101','GUWAHATI',2);
INSERT INTO PROJECT VALUES ( 58303, 'Classical Music','TEZPUR',3 );
INSERT INTO PROJECT VALUES ( 58404, 'Laplace Transformation','JORHAT',4 );
INSERT INTO PROJECT VALUES ( 58505, 'Bio-Diesel','NAGAON',5 );
INSERT INTO PROJECT VALUES ( 58601, 'Quantrum Dots','JORHAT',6);
INSERT INTO PROJECT VALUES( 58107, 'Automation', 'SIBSAGAR', 1);
INSERT INTO PROJECT VALUES( 58809, 'Linux OS', 'GUWAHATI', 8);
INSERT INTO PROJECT VALUES( 581010, 'Brand Positioning', 'JORHAT', 10);
SELECT * FROM PROJECT;                                   

/* Insert values into WORKS_ON*/
/* WORKS_ON (ssn, project_number, hours) */
INSERT INTO WORKS_ON VALUES(101, 58107, 6);
INSERT INTO WORKS_ON VALUES(307, 58303, 4);
INSERT INTO WORKS_ON VALUES(211, 58202, 11);
INSERT INTO WORKS_ON VALUES(103, 58101, 7);
INSERT INTO WORKS_ON VALUES(505, 58505, 6);
INSERT INTO WORKS_ON VALUES(208, 58809, 9);
INSERT INTO WORKS_ON VALUES(409, 58404, 6);
INSERT INTO WORKS_ON VALUES(110, 58101, 10);
INSERT INTO WORKS_ON VALUES(211, 58101, 6);
INSERT INTO WORKS_ON VALUES(615, 58101, 2);
INSERT INTO WORKS_ON VALUES(316, 58505, 5);
INSERT INTO WORKS_ON VALUES(217, 58809, 8);
INSERT INTO WORKS_ON VALUES(919, 58404, 6);
INSERT INTO WORKS_ON VALUES(820, 58101, 7);
INSERT INTO WORKS_ON VALUES(1025, 58101, 3);
INSERT INTO WORKS_ON VALUES(730, 58101, 8);

SELECT * FROM WORKS_ON;

/* Insert values into table DEPENDENT */
/* DEPENDENT (dependent_name, employee_ssn, sex, birthdate, relationship) */
INSERT INTO DEPENDENT VALUES('Wiley', 103, 'M', '2015-01-29', 'Son');
INSERT INTO DEPENDENT VALUES('Maria', 104, 'F', '201-01-29', 'Daughter');
INSERT INTO DEPENDENT VALUES('Dev', 505, 'M', '2000-10-02', 'Brother');
INSERT INTO DEPENDENT VALUES('Raku', 307, 'M', '2019-02-08', 'Son');
INSERT INTO DEPENDENT VALUES('Jackson', 409, 'M', '1995-06-16', 'Husband');
INSERT INTO DEPENDENT VALUES('Cherry', 211, 'F', '1994-04-15', 'Sister');
INSERT INTO DEPENDENT VALUES('Yukta', 112, 'F', '1958-01-21', 'Mother');
INSERT INTO DEPENDENT VALUES('Joe', 104, 'M', '1965-07-18', 'Father');
INSERT INTO DEPENDENT VALUES('Humma', 104, 'F', '2000-03-23', 'Sister');
INSERT INTO DEPENDENT VALUES('Akon', 418, 'M', '2017-11-16', 'Son');
INSERT INTO DEPENDENT VALUES('johny', 723, 'M', '1992-01-27', 'Brother');
INSERT INTO DEPENDENT VALUES('Sunny', 820, 'F', '1970-06-30', 'Mother');
INSERT INTO DEPENDENT VALUES('Einstein', 1022, 'M', '1967-08-09', 'Father');
INSERT INTO DEPENDENT VALUES('Stephen', 723, 'M', '1985-01-29', 'Husband');
INSERT INTO DEPENDENT VALUES('Alyssa', 1029, 'F', '1988-08-11', 'Wife');
INSERT INTO DEPENDENT VALUES('Robert', 824, 'M', '2015-01-13', 'Daughter');


SELECT * FROM DEPENDENT;

DROP TABLE IF EXISTS dependent_log;
CREATE TABLE dependent_log(
SELECT  ssn, count(employee_ssn) 
AS no_of_dependents
FROM EMPLOYEE LEFT JOIN DEPENDENT 
			  ON EMPLOYEE.ssn=DEPENDENT.employee_ssn
              
);

DROP TABLE IF EXISTS No_dependent;
CREATE TABLE No_dependent(
SELECT  employee_ssn, count(dependent_name)
GROUP BY employee_ssn
FROM DEPENDENT
);

SELECT * FROM dependent_log;
SELECT * FROM No_dependent;