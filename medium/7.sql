SELECT Product.name, Customer.CompanyName
FROM ProductModel
JOIN Product ON ProductModel.ProductModelID = Product.ProductModelID 
JOIN SalesOrderDetail ON SalesOrderDetail.ProductID = Product.ProductID
JOIN SalesOrderHeader ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
JOIN Customer ON SalesOrderHeader.CustomerID = Customer.CustomerID
WHERE ProductModel.Name = 'Racing Socks';