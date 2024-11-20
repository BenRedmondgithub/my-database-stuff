CREATE TABLE [Orders] (
  [OrderID] INT ,
  [CustD] INT,
  [OrderDate] Date NOT NULL,
  [DeliveryDate] Date NOT NULL,
  [DeliveryStatus] CHAR(1),
  [TotalAmount] INT,
  [PaymentStatus] CHAR(1),
  PRIMARY KEY ([OrderID])
);

CREATE TABLE [Suppliers] (
  [SupplierID] INT,
  [SupplierName] CHAR(100) NOT NULL,
  [ContactInformation] CHAR(255) NOT NULL,
  [IngredientID] INT,
  PRIMARY KEY ([SupplierID])
);

CREATE TABLE [MenuItem] (
  [ItemID] INT,
  [Name] CHAR(100),
  [Description] VARCHAR(255),
  [Nutritional] VARCHAR(255),
  [Information] VARCHAR(255),
  [Price] DECIMAL(10, 2),
  [SupplierID] INT ,
  [CustID] INT,
  PRIMARY KEY ([ItemID]),
  CONSTRAINT [FK_MenuItem.SupplierID]
    FOREIGN KEY ([SupplierID])
      REFERENCES [Suppliers]([SupplierID])
);

CREATE TABLE [Customer] (
  [CustID] INT  NOT NULL,
  [Name] CHAR(100)  NOT NULL,
  [Email] CHAR(100)  NOT NULL,
  [PhoneNumber] FLOAT(15)  NOT NULL,
  [Address] CHAR(255)  NOT NULL,
  [DietaryPreferences ] CHAR(100),
  [RegistrationDate] INT,
  [PromotonID] VARCHAR(50),
  [ItemID] INT ,
  [OrderID] INT,
  PRIMARY KEY ([CustID])
);

CREATE TABLE [Inventory ] (
  [IngredientID] INT,
  [IngredientName] CHAR(100) NOT NULL,
  [Quantity] CHAR(50),
  [ExpirationDate] Date,
  [SupplierID] INT,
  PRIMARY KEY ([IngredientID])
);

CREATE TABLE [Promotion] (
  [PromoID] CHAR(50),
  [PromoName] CHAR(100),
  [DiscountPercentage] DECIMAL(5, 2),
  [ValidFrom] Date,
  [ValidTo] Date,
  PRIMARY KEY ([PromoID])
);

CREATE TABLE [Feedback] (
  [FeedbackID] INT ,
  [CustID] INT ,
  [OrderID] INT ,
  [Rating] INT ,
  [Comments] Text,
  [Date] DateTime,
  PRIMARY KEY ([FeedbackID])
);