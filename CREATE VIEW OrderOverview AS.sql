CREATE VIEW OrderOverview AS
SELECT MAX(TotalAmount) AS TotalAmount, OrderDate, DeliveryDate, PaymentStatus 
FROM Orders 
Group by OrderDate, OrderDate, DeliveryDate, PaymentStatus