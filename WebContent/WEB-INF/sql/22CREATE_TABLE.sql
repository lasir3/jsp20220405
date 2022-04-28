-- 데이터베이스 만들기
CREATE DATABASE mydb1;
USE mydb1;

-- 테이블 만들기
CREATE TABLE MyTable1 (
	colName1 int,
    colName2 int
);

-- 테이블 구조보기
DESCRIBE MyTable1;
DESC MyTable1;
DESC mydb1.MyTable1;
DESC w3schools.Customers;

-- 새로만든 테이블에 데이터 넣기
INSERT INTO MyTable1 (colName1, colName2)
VALUES (300, 500);

SELECT * FROM MyTable1;

-- 이미 있는 데이터 사용해서 새 테이블 만들기
CREATE TABLE MyTable2 -- AS 키워드 생략됨
SELECT * FROM w3schools.Employees;

DESC MyTable2;

SELECT * FROM MyTable2;

CREATE TABLE MyTable3 AS
SELECT CustomerID, CustomerName AS Name, City, Country
FROM w3schools.Customers;

DESC MyTable3;

SELECT * FROM MyTable3;

DESC MyTable1;
INSERT INTO MyTable1 (colName1, colName2)
VALUE('111','222');

SELECT * FROM MyTable1;












