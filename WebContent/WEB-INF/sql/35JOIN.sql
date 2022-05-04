USE w3schools;

SELECT * FROM Products;
SELECT * FROM Customers;

-- 각 카테고리별 상품 수
SELECT CategoryID, Count(ProductID) 
FROM Products
GROUP BY CategoryID;

SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID)
FROM
Products p JOIN Categories c
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID; 

-- 고객별 주문 건수
-- 조회 컬럼명(고객명, 주문수)
-- 단, 주문하지 않은 고객은 나오지 않음
SELECT c.CustomerID, c.CustomerName, Count(OrderID) AS NumOfOrders 
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
ORDER BY 3 DESC;