USE w3schools;

SELECT * FROM Customers ORDER BY CustomerID DESC;

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (92, 'Donald', 'President', 'New York', 'Seattle', '00000', 'USA');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (93, 'Son', 'Heung-min', 'Tottenum', 'London', '1111', 'UK');

-- 모든 칼럼에 데이터 입력시 컬럼명 생략 가능, 특별한 이유가 있지 않는 한 생략하지 말것.
INSERT INTO Customers
VALUES (94, 'Cha', 'Bum', 'BundesLiga', 'Köln', '22222', 'Germany');

-- DESC : 테이블 Schem 조회 (DESCRIBE)
DESCRIBE Customers;
DESC Customers;

-- autoincrement 컬럼은 insert 할 때 값 생략 가능
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Oscar', 'Isaac', 'london', 'London', 'B-999', 'UK');

INSERT INTO Customers (Country, PostalCode, City, Address, ContactName, CustomerName)
VALUES ('USA', 'A112', 'Seattle', 'Hotel', 'Rap Monster', 'RM');

SELECT * FROM Employees;
DESC Employees;
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('Jisung', 'Park', '1999-01-01', 'pic1', 'manchester united');

-- 모든 칼럼을 나열하지 않아도 됨
INSERT INTO Employees (LastName, FirstName, BirthDate, Notes)
VALUES ('Lee', 'sunshin', '1990-01-01', 'general'); -- 열을 생략하면 null로 남게 됨

-- NULL : 값이 없다
-- insert시 null 명시 가능
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('Harry', 'Kane', '2000-01-01', NULL, 'soccer');
