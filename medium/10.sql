SELECT SUM(SalesOrderDetail.OrderQty)
FROM ProductCategory
JOIN Product ON ProductCategory.ProductCategoryID = Product.ProductCategoryID
JOIN SalesOrderDetail ON Product.ProductID = SalesOrderDetail.ProductID
JOIN SalesOrderHeader ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesorderID
JOIN Address ON SalesOrderHeader.ShipToAddressID = Address.AddressID
WHERE Address.City = 'London' AND ProductCategory.Name = 'Cranksets';