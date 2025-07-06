SELECT CompanyName 
FROM Customer
JOIN CustomerAddress ON Customer.CustomerID = CustomerAddress.CustomerID
JOIN Address ON CustomerAddress.AddressID = Address.AddressID
WHERE Address.City = "Dallas";