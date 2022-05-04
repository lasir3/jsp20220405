-- TRANSACTION
-- 하나의 업무ALTER
USE mydb1;

-- 은행의 송금
-- 1. A고객의 계좌의 출금
-- 2. B고객의 게좌의 입금ALTER

-- COMMIT : DB에 반영
-- ROLLBACK : 이전으로 되돌림

SELECT * FROM Customers WHERE CustomerID;
ALTER TABLE Customers MODIFY CustomerID INT PRIMARY KEY AUTO_INCREMENT;
UPDATE Customers
SET CustomerName = 'SON'
WHERE CustomerID = 1;

DESC Customers;
ROLLBACK; -- auto commit 상태이기 떄문에 ROLLBACK 되지않음

-- disable auto commit;
SET autocommit = 0;
UPDATE Customers
SET CustomerName = 'CHA'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

ROLLBACK; -- 수정 이전으로 되돌림

--
UPDATE Customers
SET CustomerName = 'PARK'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

COMMIT; -- DB에 반영