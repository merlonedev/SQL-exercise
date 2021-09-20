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

-- exercise 2.10

SELECT 
    e.*, d.*
FROM
    Employees e
        JOIN
    Departments d ON e.Department = d.Code;
    
-- exercise 2.11

SELECT 
    e.Name, e.LastName, d.Name AS Department, d.Budget
FROM
    Employees e
        JOIN
    Departments d ON d.Code = e.Department;
    
-- exercise 2.12

SELECT 
    e.name, e.LastName
FROM
    Employees e
        JOIN
    Departments d ON d.Code = e.Department
WHERE
    d.Budget > 60000;
    
-- exercise 2.13

SELECT 
    *
FROM
    Departments
WHERE
    Budget > (SELECT 
            AVG(budget)
        FROM
            Departments);
            
-- exercise 2.14

-- using JOIN
SELECT 
    d.Name AS Dep
FROM
    Employees e
        JOIN
    Departments d ON d.Code = e.Department
GROUP BY Department
HAVING count(*) > 2;


-- using subquery
SELECT 
    `Name`
FROM
    Departments
WHERE
    code IN (SELECT 
            Department
        FROM
            Employees
        GROUP BY Department
        HAVING COUNT(*) > 2);
        
-- exercise 2.15

SELECT 
    `Name`, LastName
FROM
    Employees
WHERE
    Department = (SELECT 
            sub.code
        FROM
            (SELECT 
                *
            FROM
                Departments d
            ORDER BY d.Budget
            LIMIT 2) sub
        ORDER BY Budget DESC
        LIMIT 1);
        
-- exercise 2.16

insert into Departments values(11, 'Quality Assurance', 40000);
insert into Employees values(847219811, 'Mary', 'Moore', 11);

-- exercise 2.17
SET SQL_SAFE_UPDATES = 0;
UPDATE Departments 
SET 
    Budget = 0.9 * budget;
    

