SELECT SUM(Price), COUNT(price), avg(price), CategoryID
FROM Products
GROUP BY CategoryID;