SELECT SUM(SalesOrderDetail.OrderQty) AS Total
FROM SalesOrderDetail
JOIN Product ON SalesOrderDetail.ProductID = Product.ProductID
JOIN SalesOrderHeader ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
JOIN Customer ON SalesOrderHeader.CustomerID = Customer.CustomerID
WHERE Product.Name = 'Racing Socks, L' AND Customer.CompanyName = 'Riding Cycles';