# Where Clause - used to help filters and records rows of data while select used to filter columns
# only return the rows with specific condition
USE `Parks_and_Recreation`;
# See how this works 
SELECT *
FROM employee_demographics
WHERE last_name = 'perkins';
# Returns only perkins because it is only as a last name present in table

# There are few comparison operations such as <,>,=,+,- 
# here are few examples of using it 

SELECT * 
FROM employee_salary
WHERE salary >= 50000;

SELECT * 
FROM employee_salary
WHERE salary <= 50000;

# in this example we will try to see only male and female seperate 
SELECT * 
FROM employee_demographics
WHERE gender != "Male";

SELECT * 
FROM employee_demographics
WHERE gender != "Female";

# Now we will see Logical Operators Such as AND, NOT, OR
# AND says Both have to be TRUE
# NOT 
# OR Says either anyone has to be TRUE

SELECT * 
FROM employee_demographics
# inside Bracket - Both condition has to be met AND Outside parentheses either grater than has to met 
WHERE (first_name = 'leslie' AND age = 44) OR age > 55;

# LIKE Statement 
# Special Characters to use in THIS - %, _
# jer% - search first 3 letters present in data and returns 
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'jer%'; # It retruns the first "jer" present in all data

# %er% - search anything present before and after in the data 
SELECT * 
FROM employee_demographics
WHERE first_name LIKE '%jer%'; # here we search anything % comes before er% anything comes after in the data

# _ it returns the character if it present in the data 
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a__'; # it returns the only character present after the letter a__.

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a__%'; # if you want to search more than 3 characters you can add % it will search more than 3 chatacters 

SELECT * 
FROM employee_demographics
WHERE birth_date LIKE '1986%';

# it looks for specific sequence in the columnn you look for.