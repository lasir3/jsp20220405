USE w3schools;

SELECT * FROM Products;
SELECT * FROM Products ORDER BY Price;
SELECT MIN(Price) FROM Products;
SELECT MAX(Price) FROM Products;

SELECT MIN(LastName) FROM Employees;
SELECT MAX(LastName) FROM Employees;
SELECT * FROM Employees ORDER BY LastName;

SELECT MIN(BirthDate) FROM Employees;
SELECT MAX(BirthDate) FROM Employees;

SELECT * FROM Employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM Employees);

SELECT * FROM Employees ORDER BY BirthDate LIMIT 1;

-- 문제 ) 가장 가격이 비싼 상품의 이름을 조회
SELECT ProductName FROM Products
WHERE Price = (SELECT MAX(Price) FROM Products);
SELECT ProductName FROM Products ORDER BY Price DESC LIMIT 1;

