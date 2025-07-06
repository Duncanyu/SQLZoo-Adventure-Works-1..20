SELECT Customer.CompanyName FROM SalesOrderHeader
JOIN Customer ON SalesOrderHeader.CustomerID = Customer.CustomerID
WHERE (SalesOrderHeader.Subtotal + SalesOrderHeader.TaxAmt + SalesOrderHeader.Freight) > 100000;