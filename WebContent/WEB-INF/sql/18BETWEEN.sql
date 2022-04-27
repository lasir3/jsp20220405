USE w3schools;

SELECT * FROM Employees ORDER BY BirthDate;

SELECT * FROM Employees
WHERE BirthDate >= '1960-01-01'
  AND BirthDate <= '1969-12-31';
  
SELECT * FROM Employees
WHERE BirthDate BETWEEN '1960-01-01' AND '1969-12-31';

SELECT * FROM Products
WHERE Price BETWEEN 20 AND 30;