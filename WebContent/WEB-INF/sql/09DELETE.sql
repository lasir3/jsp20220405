USE w3schools;

SELECT * FROM Employees;
DELETE FROM Employees; -- 모든 레코드 삭제

SELECT * FROM Customers;

DELETE FROM Customers WHERE Country = 'Mexico';

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
SELECT * FROM Customers WHERE CustomerName='Alfreds Futterkiste';

DESC Employees;