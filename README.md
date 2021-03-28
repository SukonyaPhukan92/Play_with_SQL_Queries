# SQL_Queries

DEPARTMENT (dept_number, dept_name, location, manager_ssn)
EMPLOYEE (ssn, name, address, salary, birthdate, supervisor_ssn, 
department_number)
PROJECT (project_number, project_name, location, department_number)
WORKS_ON (ssn, project_number, hours)
DEPENDENT (dependent_name, employee_ssn, sex, birthdate, relationship)

1. Create the tables along with necessary constraints (primary key, foreign 
key, not null, check, unique etc.)

2. Insert data so that the results of the following queries can be examined:
Write SQL queries for:

➢ List the names of employees who are born before 01-01-1999.

➢ List the names of employees working in the ‘Marketing’ department.

➢ List the names of projects where more than five employees work.

➢ List the names of employees who do not work on any project.

➢ List the names of employees who earn more than all employees of ‘IT’ 
department.

➢ List the name of the immediate supervisor of ‘John Smith’.

➢ List the name of the department where the average salary of employees 
is maximum.

➢ List the names of employees along with the names of their dependents. 
If an employee does not have a dependent, the dependent name should 
be displayed as NULL.

➢ Create a view that retrieves name, salary and department name of all 
employees
