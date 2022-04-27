USE w3schools;

SELECT * FROM Customers;
INSERT INTO Customers (CustomerName, City)
VALUES ('SON', 'Seoul');

-- NULL : 값이 없다
SELECT * FROM Customers WHERE CustomerName = 'SON';

-- IFNULL : NULL을 다른 값으로 변경해주는 함수
SELECT CustomerName, ContactName FROM Customers WHERE CustomerName = 'SON';
SELECT CustomerName, IFNULL(ContactName, 'NONAME') FROM Customers WHERE CustomerName = 'SON';
SELECT CustomerName, IFNULL(ContactNAme, 'NONAME') AS ContactName FROM Customers;

SELECT 1 + 1;
SELECT 1 + NULL; -- NULL 연산의 값은 NULL

-- Products2 테이블 만들기
CREATE TABLE Products2 (
	P_Id int PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(20),
    UnitPrice DEC(4, 2),
    UnitsInStock INT,
    UnitsOnOrder INT
);

INSERT INTO Products2 (ProductName, UnitPrice, UnitsInStock, UnitsOnOrder)
VALUES ('Jarlsberg', 10.45, 16, 15), 
	   ('Mascarpone', 32.56, 23, null),
       ('Gorgonzola', 15.67, 9, 20);
SELECT * FROM Products2;

SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
FROM Products2;

SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
FROM Products2;

-- ifnull, calesce 창
-- ifnull : 파라미터 수가 2개
--          첫번째 파라미터가 null이면 2번째 파라미터값을 리턴
--                                아니면 첫번째 값 리턴
-- coalesce : 파라미터수 가 2개 이상
--            여러 파라미터 중 null이 아닌 첫번째 값 리턴

SELECT IFNULL('널아님', '대체값');
SELECT IFNULL(null, '대체값');
SELECT COALESCE('대체값1');
SELECT COALESCE('값1', '값2');
SELECT COALESCE(null, null, null, null, '값1', '값2');