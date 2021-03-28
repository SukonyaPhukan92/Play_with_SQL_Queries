
/*List the names of employees who are born before 01-01-1999. */

SELECT e_name FROM EMPLOYEE 
WHERE BirthDate < '1999-01-01';

/*List the names of employees working in the ‘Marketing’ department. */
SELECT e_name FROM EMPLOYEE
WHERE department_number IN(SELECT dept_number 
						   FROM DEPARTMENT 
                           WHERE dept_name='Marketing');

/*List the names of projects where more than five employees work. */

SELECT project_name 
FROM PROJECT, WORKS_ON
WHERE PROJECT.project_number = WORKS_ON.project_no
GROUP BY project_number
HAVING COUNT(*)>5;


/* List the names of employees who do not work on any project. */

SELECT e_name FROM EMPLOYEE WHERE ssn NOT IN(SELECT ssn
											FROM WORKS_ON 
                                            WHERE EMPLOYEE.ssn = WORKS_ON.ssn);

/* List the names of employees who earn more than all employees of ‘IT’
department. */
SELECT e_name,Salary 
FROM EMPLOYEE 
WHERE Salary> ALL(SELECT Salary
			   FROM EMPLOYEE 
               WHERE department_number IN(SELECT dept_number
										  FROM DEPARTMENT
                                          WHERE dept_name = 'IT'));
                                          
/*List the name of the immediate supervisor of ‘John Smith’. */
SELECT e_name
FROM EMPLOYEE 
WHERE ssn IN (SELECT supervisor_ssn
			  FROM EMPLOYEE 
              WHERE e_name ='John Smith');
              
/* List the name of the department where the average salary of employees is maximum */
SELECT dept_name, AVG(Salary) AS S 
FROM EMPLOYEE LEFT JOIN DEPARTMENT
ON EMPLOYEE.department_number = DEPARTMENT.dept_number
GROUP BY dept_name
HAVING S IN (SELECT MAX(T1.S)
             FROM (SELECT department_number,AVG(Salary) AS S
				   FROM EMPLOYEE 
				   GROUP BY department_number)
			 AS T1);
      
  /* List the names of employees along with the names of their dependents.
If an employee does not have a dependent, the dependent name should be displayed as NULL   */

SELECT  e_name, group_concat(dependent_name) 
AS dependents
FROM EMPLOYEE LEFT JOIN DEPENDENT 
			  ON EMPLOYEE.ssn=DEPENDENT.employee_ssn
              GROUP BY e_name;
     
      
  /* Create a view that retrieves name, salary and department name of all
employees.  */
DROP VIEW IF EXISTS EMPLOYEE1;
  
CREATE VIEW EMPLOYEE1
AS SELECT e_name, Salary, dept_name
FROM EMPLOYEE, DEPARTMENT
WHERE department_number=dept_number;

SELECT * FROM EMPLOYEE1;

