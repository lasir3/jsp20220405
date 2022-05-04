USE w3schools;

-- Beverages 카테고리에있는 상품들 조회
SELECT * 
FROM Products p JOIN Categories c 
ON p.CategoryID = c.CategoryID
WHERE
	c.CategoryID = 1; -- Beverages의 CategoryID는 1
   
-- Condiments 카테고리에 있는 상품들 조회
SELECT CategoryName FROM Categories;
SELECT * 
FROM Products p JOIN Categories c
ON p.CategoryID = c.CategoryID
WHERE
	c.CategoryName = 'Condiments';
   
-- 1996년 7월 4일에 주문한 고객의 이름 조회
SELECT * FROM Orders;
SELECT CustomerName
FROM Customers c JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE
	o.OrderDAte = '1996-07-04';
   
