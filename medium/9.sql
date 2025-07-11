SELECT Customer.CompanyName, SalesOrderHeader.SubTotal, SUM(SalesOrderDetail.OrderQty * Product.weight)
FROM Product
JOIN SalesOrderDetail ON Product.ProductID = SalesOrderDetail.ProductID
JOIN SalesOrderHeader ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesorderID
JOIN Customer ON SalesOrderHeader.CustomerID = Customer.CustomerID
GROUP BY SalesOrderHeader.SalesOrderID, SalesOrderHeader.SubTotal, Customer.CompanyName
ORDER BY SalesOrderHeader.SubTotal DESC;