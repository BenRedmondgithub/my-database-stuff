CREATE VIEW reviews as
SELECT OrderID, Rating, Comments, Date 
FROM Feedback
WHERE Rating >=3