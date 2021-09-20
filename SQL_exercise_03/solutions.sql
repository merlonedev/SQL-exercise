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
    
-- exercise 3.4
SELECT 
    AVG(value)
FROM
    Boxes;
    
-- exercise 3.5
SELECT 
    Warehouse, AVG(value)
FROM
    Boxes
GROUP BY Warehouse;

-- exercise 3.6
SELECT 
    Warehouse, AVG(value) AS AvgValue
FROM
    Boxes
GROUP BY Warehouse
HAVING AvgValue > 150;

-- exercise 3.7
SELECT 
    box.code, ware.location
FROM
    Boxes box
        JOIN
    Warehouses ware ON ware.Code = box.Warehouse;
    
-- exercise 3.8
SELECT 
    Warehouse, COUNT(*)
FROM
    Boxes
GROUP BY Warehouse;

-- exercise 3.9
select * from Warehouses;
SELECT 
    code
FROM
    Warehouses
WHERE
    capacity < (SELECT 
            COUNT(*)
        FROM
            Boxes
        WHERE
            Warehouse = Warehouses.code);
            
-- exercise 3.10
SELECT 
    code
FROM
    Boxes
WHERE
    Warehouse IN (SELECT 
            code
        FROM
            Warehouses
        WHERE
            Location = 'Chicago');