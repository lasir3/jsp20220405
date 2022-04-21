-- -- 는 한 줄 주석
-- SELECT : 테이블에 있는 데이터 가져오는 명령문
-- FROM : 어떤 테이블
-- ; : 명령문 종료
SELECT * FROM Customers;

-- data : table의 한 줄 (row, record)

-- 8개 테이블 조회
SELECT * FROM Employees;
SELECT * FROM Products;

-- 특성 속성(attribute, column, field)만 조회
-- SELECT 키워드 다음에 column명 나열
SELECT * FROM Customers;
SELECT CustomerName, Address FROM Customers;

-- Employees 테이블에서 FirstName과 BirthDate만 조회
SELECT FirstName, BirthDate FROM Employees;
-- Employees 테이블에서 FirstName과 LastName을 조회하는데
-- FirstName이 왼쪽에 위치하도록 조회 쿼리 작성
SELECT FirstName, LastName FROM Employees;
SELECT LastName, FirstName FROM Employees;

-- 대소문자 구분 안함 (데이터베이스 Vendor; Version마다 다름)
select FIRSTNAME, LASTNAME from Employees;
select FIRSTNAME, LASTNAME form employess; -- 없음

-- 작성 관습 : 키워드는 대문자
-- 컬럼명 : lowerCamelCase, snake_case, SNAKE_CASE
