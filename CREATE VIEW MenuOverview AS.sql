CREATE VIEW MenuOverview AS
SELECT Name, Description, Nutritional, Price,SupplierName, ContactInformation
FROM MenuItem
inner join Suppliers
ON MenuItem.SupplierID = Suppliers.SupplierID