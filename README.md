# sql-challenge
Module 9 Assignment

All completed files can be found in: DeMaagdJ/sql-challenge/EmployeeSQL/

https://github.com/DeMaagdJ/sql-challenge.git



Data Modeling & Data Engineering notes:

An Entity Relationship Diagram was created within pgAdmin 4.  The diagram outline was utilized to prepare the .sql file of my table schemata.  The file can be found in: 

DeMaagdJ/sql-challenge/EmployeeSQL/SQL_Challenge_ERD_script_Completed.sql


Primary keys and foreign keys are assigned appropriately.

 - "Titles, dept_emp, salaries, dept_manager" tables are related with one to many relations referencing "employees" table on "PK emp_no" 

- "Dept_manager, dept_emp" tables are related with one to many relations referencing "departments" table on "PK dept_no"

- "Titles" tables are related with one to many relations referencing "employees" table on "FK title_id"

Table fields are appropriately defined and assigned reasonable lengths.

NOT NULL statements are incorporated correctly in SQL_Challenge_ERD_script_Completed.sql


Data Analysis notes:

All queries accurately answer the questions provided.  Queries have been tested for thoroughness and accuracy.

The query analysis can be found in:

DeMaagdJ/sql-challenge/blob/main/EmployeeSQL/SQL_challenge JD_2-23-23_Completed.sql

An image file of the ERD is provided.  It can be found in:

DeMaagdJ/sql-challenge/SQL_Challenge_ERD_screenshot_JD_2-23-23.png



