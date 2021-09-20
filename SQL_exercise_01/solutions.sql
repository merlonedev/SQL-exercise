use sqlexercises;

-- exercise 1

SELECT 
    `Name`
FROM
    Products;
    
-- exercise 1.2

SELECT 
    p.name, p.price
FROM
    Products p;
    
-- exercise 1.3

SELECT 
    p.name
FROM
    Products p
WHERE
    p.Price <= 200;
    
-- exercise 1.4

SELECT 
    p.name
FROM
    Products p
WHERE
    p.Price BETWEEN 60 AND 120;
    
-- exercise 1.5

SELECT 
    p.price * 100 AS PrinceInCents
FROM
    Products p;
    
-- exercise 1.6

SELECT 
    AVG(price) AS Average
FROM
    Products;

-- exercise 1.7

SELECT 
    AVG(price)
FROM
    Products
WHERE
    Manufacturer = 2;
    
-- exercise 1.8

SELECT 
    COUNT(*)
FROM
    Products
WHERE
    Price >= 180;
    
-- exercise 1.9

SELECT 
    p.name, p.price
FROM
    Products p
WHERE
    p.Price >= 180
ORDER BY Price DESC , p.name ASC;

-- exercise 1.10

SELECT 
    p.*, m.Name AS ManufacturerName
FROM
    Products p
        JOIN
    Manufacturers m ON p.Code = m.Code;

-- exercise 1.11

SELECT 
    p.name, p.price, m.name AS ManufacturerName
FROM
    Products p
        JOIN
    Manufacturers m ON p.Code = m.Code;
    
-- exercise 1.12

SELECT 
    AVG(price), Manufacturer
FROM
    Products
GROUP BY Manufacturer;

-- exercise 1.13

SELECT 
    m.name AS Manufacturer, AVG(p.Price) AS AvgPrice
FROM
    Manufacturers m
        JOIN
    Products p ON m.Code = p.Code
GROUP BY m.Name;