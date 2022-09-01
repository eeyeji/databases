SELECT price, (CASE WHEN Price > 60 THEN '비쌈' 
                           WHEN price < 30 THEN '저렴'
                           ELSE '적당'
                           END) AS price
FROM Products
WHERE CategoryID in (3, 6)
ORDER BY SupplierID DESC;