USE w3schools;

SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Brazil';
SELECT * FROM Customers WHERE Country = 'Brazil' AND City = 'Rio de Janeiro'; -- 결과가 TRUE 일때만 나열

SELECT * FROM Customers WHERE Country = 'Germany' OR City = 'London';

SELECT * FROM Customers WHERE NOT Country = 'Germany';

SELECT * FROM Customers WHERE 1 = 1;
SELECT * FROM Customers WHERE Country = 'Germany' OR 1 = 1;

-- 나라명 ' OR '1' = '1
SELECT * FROM Customers WHERE Country = '' OR '1' = '1';