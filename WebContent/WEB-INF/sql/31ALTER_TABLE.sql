USE mydb1;

-- CREATE TABLE : 테이블 만들기
CREATE TABLE Customers AS
SELECT * FROM w3schools.Customers;

DESC Customers;

-- DROP TABLE : 테이블 삭제

-- ALTER TABLE : 테이블 수정
-- 컬럼 추가
ALTER TABLE Customers
ADD Email VARCHAR(255);

ALTER TABLE Customers
ADD Email VARCHAR(255) NOT NULL DEFAULT '이메일 없음';

ALTER TABLE Customers
ADD Email VARCHAR(255) FIRST;

ALTER TABLE Customers
ADD Email VARCHAR(255) AFTER ContactName;

-- 컬럼 삭제
ALTER TABLE Customers
DROP COLUMN Email;

-- 절럼 수정
ALTER TABLE Customers
MODIFY COLUMN Email VARCHAR(10);