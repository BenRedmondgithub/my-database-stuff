CREATE PROCEDURE CustomerOrderOverview
AS
SELECT Email, RegistrationDate, Nutritional, Information
FROM Customer
inner join MenuItem
ON Customer.ItemID = MenuItem.CustID;