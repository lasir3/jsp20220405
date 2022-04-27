USE w3schools;
-- ALIAS : 별칭
-- 쿼리에서 컬럼이나 테이블에 다른 이름을 줄 수 있음

SELECT MIN(Price) AS smallest_price FROM Products;
SELECT MAX(Price) AS max_price FROM Products;

SELECT LastName AS name, BirthDate AS birth, Photo FROM Employees;
SELECT LastName, BirthDate, Photo FROM Employees;

-- AS 키워드는 생략 가능
SELECT LastName name, BirthDate birth, Photo FROM Employees;


SELECT * FROM Products;
SELECT * FROM Categories;

-- 조인
SELECT ProductName, CategoryName FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- 테이블에 별칭주고 조인
SELECT ProductName, CategoryName 
FROM Products AS p JOIN Categories AS c ON p.CategoryID = c.CategoryID;

-- 테이블에 별칭 줄 때 AS 생략
SELECT ProductName, CategoryName 
FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID;

