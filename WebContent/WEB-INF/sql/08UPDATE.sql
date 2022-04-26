USE w3schools;

SELECT * FROM Employees ORDER BY EmployeeID DESC;
DESC Employees;
UPDATE Employees
SET LastName = 'Sunja',
	FirstName = 'YuhJung'
WHERE EmployeeID = 1;

-- 예제1) 1번 고객(Customers Table)의 
-- 계약자명(ContactName)은 'Alfred Schmidt'
-- 도시(City)는 'Frankfurt'로 변경
UPDATE Customers SET ContactName = 'Alfred Schmidt', City = 'Frankfurt' WHERE CUstomerID = 1;
SELECT * FROM Customers;   

SELECT 1 = 1; -- true 1
SELECT 1 = 2; -- false 0
SELECT 1 = '1'; -- true 1 -- String 값도 대입 가능