use sqlexercises;

-- exercise 3.1
SELECT 
    *
FROM
    Warehouses;

-- exercise 3.2
SELECT 
    *
FROM
    Boxes
WHERE
    Value > 150;

-- exercise 3.3
SELECT DISTINCT
    contents
FROM
    Boxes;