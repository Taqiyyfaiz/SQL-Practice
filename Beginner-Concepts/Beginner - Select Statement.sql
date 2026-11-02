# Select statement - How to choose columns from a TABLE
# Why SELECT Statement Matters - Every Analysis Starts with seeing data
# PATTERNS : SELECT ALWAYS COMES BEFORE FROM STATEMENT 

SELECT * from employee_demographics;
SELECT * from employee_salary;
SELECT * from parks_departments;

# You'll also often see SQL queries formatted like this.
SELECT first_name, 
last_name, 
birth_date
FROM employee_demographics;

# DISTINCT - It uses to Find a Unique Value
# For example - You can see there are 2 value which is Male and Female but it represent multiple times in a row 
SELECT gender 
FROM employee_demographics;

# If you use DISTINCT it will show only 2 valuse Such as Make and Female
SELECT DISTINCT gender 
FROM employee_demographics;

