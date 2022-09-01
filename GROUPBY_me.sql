-- CategoryID별로 sum, count, avg 구하기
-- w3schools
SELECT SUM(Price), COUNT(price), avg(price), CategoryID
FROM Products
GROUP BY CategoryID;