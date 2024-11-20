INSERT INTO [Orders] (OrderID, CustD, OrderDate, DeliveryDate, DeliveryStatus, TotalAmount, PaymentStatus)
VALUES
(1, 1, '2024-03-05', '2024-03-07', 'D', 25, 'P'),
(2, 2, '2024-03-02', '2024-03-04', 'P', 15, 'U'),
(3, 3, '2024-03-05', '2024-03-07', 'D', 30, 'P'),
(4, 4, '2024-04-10', '2024-04-12', 'D', 10, 'P'),
(5, 5, '2024-04-15', '2024-04-16', 'P', 15, 'U'),
(6, 6, '2024-04-20', '2024-04-22', 'D', 45, 'P');

INSERT INTO [Suppliers] (SupplierID, SupplierName, ContactInformation, IngredientID)
VALUES
(1, 'Green Farms', 'info@greenfarms.ie, 01-656-1088', 1),
(2, 'Good Foods', 'contact@goodfood.ie, 01-456-8168', 2),
(3, 'Freshcut Foods.', 'info@freshcutfoods, 01-123-8586', 3),
(4, 'Malone Food Products', 'contact@malonefoodproducts, 01-556-7634', 4),
(5, 'Ballymaguire Foods', 'info@ballymaguirefoods, 01-405-2534', 5),
(6, 'Green Isle', 'contact@greenisle, 01-505-5565', 6);

INSERT INTO [MenuItem] (ItemID, Name, Description, Nutritional, Information, Price, SupplierID, CustID) 
VALUES
(1, 'Grilled Chicken Salad', 'Healthy salad with grilled chicken, mixed greens', 'Calories: 350, Protein: 30g', 'Carbs: 20g, Fat: 15g', 10.99, 1, 1),
(2, 'Quinoa Bowl', 'Nutritious bowl with quinoa, black beans', 'Calories: 400, Protein: 15g', 'Carbs: 50g, Fat: 10g', 8.99, 2, 2),
(3, 'Keto Avocado Toast', 'Avocado toast with eggs and bacon', 'Calories: 450, Protein: 20g', 'Carbs: 5g, Fat: 35g', 7.99, 3, 3),
(4, 'Vegan Buddha Bowl', 'Bowl with chickpeas, quinoa, vegetables', 'Calories: 350, Protein: 12g', 'Carbs: 45g, Fat: 8g', 9.99, 2, 4),
(5, 'Pescatarian Sushi Platter', 'Assorted sushi with fresh fish', 'Calories: 300, Protein: 25g', 'Carbs: 40g, Fat: 5g', 12.99, 4, 5),
(6, 'Low-Carb Zoodles', 'Zucchini noodles with marinara sauce', 'Calories: 250, Protein: 20g', 'Carbs: 10g, Fat: 15g', 8.49, 5, 6);

INSERT INTO [Customer] (CustID, Name, Email, PhoneNumber, Address, [DietaryPreferences ], RegistrationDate, PromotonID, ItemID, OrderID) 
VALUES
(1, 'Liam Redmond', 'liam.redmond@example.ie', '0831234567', '12 Merrion Square, Dublin', 'Vegetarian', 2024-01-15, 'PROMO1', 1, 1),
(2, 'Aoife Murphy', 'aoife.murphy@notgmail.ie', '0852345678', '34 Leeson Street, Dublin', 'Gluten-Free', 2024-02-20, 'PROMO2', 2, 2),
(3, 'Sean Byrne', 'sean.byrne@nothotmail.ie', '0873456789', '56 Grafton Street, Dublin', 'Keto', 2024-03-05, 'PROMO3', 3, 3),
(4, 'Emma Smith', 'emma.smith@example.ie', '0864567890', '78 Camden Street, Dublin', 'Vegan', 2024-03-15, 'PROMO4', 4, 4),
(5, 'Jack Dylen', 'jack.kelly@nothotmail.ie', '0835678901', '90 Dame Street, Dublin', 'Pescatarian', 2024-03-25, 'PROMO5', 5, 5),
(6, 'Emily Jackson', 'emily.Jackson@notgmail.ie', '0856789012', '101 Harcourt Street, Dublin', 'Low-Carb', 2024-04-01, 'PROMO6', 6, 6);

INSERT INTO [Inventory ] (IngredientID, IngredientName, Quantity, ExpirationDate, SupplierID) 
VALUES
(1, 'Chicken', '100 kg', '2024-06-01', 1),
(2, 'white bread', '200 kg', '2024-12-31', 2),
(3, 'Noodles', '250 kg', '2024-05-20', 3),
(4, 'Fish', '120 kg', '2024-05-30', 4),
(5, 'Cheese', '160 pcs', '2024-05-25', 5),
(6, 'Beef', '80 kg', '2024-07-01', 6);

INSERT INTO [Promotion] (PromoID, PromoName, DiscountPercentage, ValidFrom, ValidTo) 
VALUES
('PROMO1', 'happyspringsale', 10.00, '2024-04-01', '2024-04-30'),
('PROMO2', 'SpicySummerSpecial', 15.00, '2024-06-01', '2024-06-30'),
('PROMO3', 'Back2School', 20.00, '2024-09-01', '2024-09-30'),
('PROMO4', 'HolidayDiscount', 25.00, '2024-12-01', '2024-12-31'),
('PROMO5', 'NewYearOffer', 30.00, '2025-01-01', '2025-01-31'),
('PROMO6', 'ValentinesDay', 5.00, '2024-02-01', '2024-02-14');

INSERT INTO [Feedback] (FeedbackID, CustID, OrderID, Rating, Comments, Date) 
VALUES
(1, 1, 1, 5, 'Excellent service and delicious food!', '2024-04-02 14:30:00'),
(2, 2, 2, 4, 'Great taste but delivery was late.', '2024-04-04 16:45:00'),
(3, 3, 3, 5, 'Highly recommend the keto options!', '2024-04-06 12:20:00'),
(4, 4, 4, 3, 'Food was good but portion was small.', '2024-04-08 18:10:00'),
(5, 5, 5, 4, 'Fresh ingredients and tasty meals.', '2024-04-10 13:50:00'),
(6, 6, 6, 5, 'Loved the low-carb zoodles!', '2024-04-12 15:30:00');