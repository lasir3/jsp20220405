USE w3schools;

SELECT LastName FROM Employees;
SELECT FirstName FROM Employees;

SELECT LastName FROM Employees
UNION
SELECT FirstName FROM Employees; -- 여러 조회를 합칠 때 (합집합)

-- 1. 여러 SELECT의 컬럼 수가 같아야 함
-- 2. 각 컬럼의 data type이 유사해야함
-- 3. 컬럼이 같은 순서 이어야 함


SELECT LastName, FirstName FROM Employees
UNION
SELECT CustomerName FROM Customers; -- 컬럼 수가 달라서 안됨

SELECT LastName, BirthDate FROM Employees
UNION
SELECT CustomerName, Country FROM Customers; -- ok

SELECT EmployeeID, LastName FROM Employees
UNION
SELECT ProductName, Price FROM Products; 

-- union : 합집합 (중복없음)
-- UNION ALL : 중복허용
SELECT LastName FROM Employees
UNION
SELECT FirstName FROM Employees;
SELECT LastName FROM Employees
UNION ALL
SELECT FirstName FROM Employees;

-- 2개이상의 조회 결과를 합칠 수 있음
SELECT Country FROM Customers
UNION 
SELECT Country FROM Suppliers
UNION
SELECT City FROM Customers;


SELECT LastName, FirstName, 'samsung' AS company FROM Employees;


-- leetcode 1795
# Write your MySQL query statement below

SELECT product_id, 'store1' store, store1 price
FROM Products
WHERE store1 IS NOT NULL

UNION

SELECT product_id, 'store2' store, store2 price
FROM Products
WHERE store2 IS NOT NULL

UNION

SELECT product_id, 'store3' store, store3 price
FROM Products
WHERE store3 IS NOT NULL;




