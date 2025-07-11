SELECT ProductDescription.Description
FROM ProductDescription JOIN ProductModelProductDescription ON ProductDescription.ProductDescriptionID = ProductModelProductDescription.ProductDescriptionID
JOIN ProductModel ON ProductModelProductDescription.ProductModelID = ProductModel.ProductModelID
JOIN Product ON ProductModel.ProductModelID = Product.ProductModelID
WHERE ProductModelProductDescription.culture = 'fr' AND Product.ProductID = '736';