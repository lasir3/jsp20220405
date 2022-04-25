USE w3schools;
SELECT * FROM Customers;
SELECT Country FROM Customers;

-- DISTINCT : 중복 제거 
SELECT DISTINCT(Country) FROM Customers;
SELECT DISTINCT Country FROM Customers;

-- Suppliers 테이블에서 중복없이 Country 컬럼 조회
SELECT DISTINCT Country FROM Suppliers;
SELECT Country FROM Suppliers;

SELECT city FROM Customers;