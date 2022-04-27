USE w3schools;

SELECT COUNT(ProductID) FROM Products; -- NULL은 카운트 하지 않음
SELECT * FROM Employees;
INSERT INTO Employees (LastName, BirthDate, Photo, Notes)
VALUES ('Son', '1999-01-01', 'pic1', 'soccer');

SELECT COUNT(LastName) FROM Employees;
SELECT COUNT(FirstName) FROM Employees;

SELECT DISTINCT LastName FROM Employees;
SELECT COUNT(DISTINCT LastName) FROM Employees;
SELECT COUNT(DISTINCT LastName) num_of_last_name FROM Employees;

-- avg : 평균, null은 무시
SELECT AVG(Price) FROM Products;
SELECT AVG(Price) AS avg_price FROM Products;

-- sum : 합, null은 무시
SELECT SUM(Price) FROM Products;
SELECT SUM(Price) AS sum_price FROM Products;
SELECT SUM(Price) AS 가격합계 FROM Products;