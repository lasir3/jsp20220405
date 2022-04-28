-- 논리연산
-- = : 같다
SELECT * FROM Customers
WHERE Country = 'Germany';

-- > 크다, < 작다, >= 크거나 같다. <= 작거나 같다
-- <>, != 다르다
SELECT * FROM Customers
WHERE Country <> 'Germany';
SELECT * FROM Customers
WHERE Country != 'Germany';

-- 산술 연산
-- +, -, *, /
SELECT 3 + 5;
SELECT 3 - 5;
SELECT 3 * 5;
SELECT 3 / 5;

SELECT * FROM Products ORDER BY Price;
-- min 2.50
-- max 263.50

-- 가장 높은가격과 가장 낮은 가격 차이
SELECT MAX(Price) - MIN(Price) AS 가격차
FROM Products;

-- 문자열 연결연산 
-- CONCAT 함수 사용

SELECT CustomerName, CONCAT(Country, ' ', City, ' ', Address) AS Address FROM Customers;