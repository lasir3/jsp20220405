USE w3schools;

SELECT * FROM Employees;

-- LIKE : 유사한, ~ 같은
-- '_' : 하나의 문자

SELECT * FROM Employees WHERE Photo LIKE 'EmpID_.pic';

-- '%' : 0개 이상의 문자

SELECT * FROM Employees WHERE LastName LIKE 'D%';
SELECT * FROM Employees WHERE LastName LIKE '%n';
