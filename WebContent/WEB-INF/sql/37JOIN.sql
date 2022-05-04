USE w3schools;

-- Orders : 주문
-- Customers : 고객
-- 주문한적 없는 고객명 조회
SELECT c.CustomerName, o.OrderID FROM Customers c LEFT JOIN Orders o
On c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

-- 고객별 주문 건수 with 0건도 나와야함
SELECT c.CustomerName, COUNT(o.OrderID) OrderCount
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 2 DESC;