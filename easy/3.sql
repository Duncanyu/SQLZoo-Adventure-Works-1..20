SELECT Count(*) AS Total
FROM SalesOrderDetail
JOIN Product ON SalesOrderDetail.ProductID = Product.ProductID
WHERE Product.ListPrice > 1000;