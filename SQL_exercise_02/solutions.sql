use sqlexercises;
-- exercise 2.1

SELECT 
    LastName
FROM
    Employees;
    
-- exercise 2.2

SELECT DISTINCT
    LastName
FROM
    Employees;
    
-- exercise 2.3

SELECT 
    *
FROM
    Employees
WHERE
    LastName = 'Smith';
    
-- exercise 2.4

SELECT 
    *
FROM
    Employees
WHERE
    LastName IN ('Smith' , 'Doe');
    
-- exercise 2.5

SELECT 
    *
FROM
    Employees
WHERE
    Department = 14;
    
-- exercise 2.6

SELECT 
    *
FROM
    Employees
WHERE
    Department IN (37 , 77);
    
-- exercise 2.7

SELECT 
    *
FROM
    Employees
WHERE
    LastName LIKE 'S%';
    
-- exercise 2.8

SELECT 
    SUM(Budget) AS BudgetSum
FROM
    Departments;
    
-- exercise 2.9

SELECT 
    COUNT(*) AS Qty, Department
FROM
    Employees
GROUP BY Department;