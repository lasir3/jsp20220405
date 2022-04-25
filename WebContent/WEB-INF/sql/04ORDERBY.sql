USE w3schools;

SELECT * FROM Customers ORDER BY ContactName; -- 조회결과 ContactName 오름차순 정렬
SELECT * FROM Customers ORDER BY City;

-- ASC : 오름차순(기본)
-- DESC : 내림차순

SELECT * FROM Customers ORDER BY City ASC; -- 조회결과 ContactName 오름차순 정렬
SELECT * FROM Customers ORDER BY City DESC; -- 조회결과 ContactName 내림차순 정렬

-- 여러 열 기준으로 정렬
SELECT * FROM Customers ORDER BY Country, City;
SELECT * FROM Customers ORDER BY Country ASC, City ASC;
SELECT * FROM Customers ORDER BY Country DESC, City;

-- 연습1 ) 직원(Employees)을 생일 내림차순, LastName 오름차순 정렬로 조회
SELECT * FROM Employees ORDER BY BirthDate DESC, LastName ASC;
-- 연습2 ) 고객이 있는 나라를 오름차순 정렬로 조회 (단 한번씩만 결과로 나오도록)
SELECT DISTINCT Country FROM Customers ORDER BY Country ASC;
-- 연습3 ) 고객이 있는 도시를 오름차순 정렬로 조회 (단 한번씩만 결과로 나오도록)
SELECT DISTINCT City FROM Customers ORDER BY City ASC;

-- 칼럼번호로 정렬
SELECT * FROM Customers ORDER BY 5; -- 다섯번째 열(City)로 정렬
SELECT CustomerID, CustomerName, ContactName, Address, City , PostalCode, Country FROM Customers ORDER BY 3;
SELECT CustomerID, CustomerName, ContactName, Address, City , PostalCode, Country FROM Customers ORDER BY 7, 5;