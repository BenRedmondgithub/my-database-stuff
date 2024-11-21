CREATE TABLE [Customer] (
  [CustID] INT IDENTITY (1,1),
  [CustName] varchar(80),
  [CustAdrr] varchar(255),
  [City]     varchar(80),
  [CustPhone] varchar(100),
  [CusEmail] varchar(100),
  PRIMARY KEY ([CustID])
);


CREATE TABLE [Designer] (
  [DesID] INT IDENTITY (1,1),
  [FullName] varchar(80),
  [DesEmail] varchar(100),
  [DesPhone] varchar(100),
  PRIMARY KEY ([DesID])
);

CREATE TABLE [Model] (
  [ModelNum] char(10),
  [ModelName] varchar(80),
  [DesID] INT,
  PRIMARY KEY ([ModelNum]),
  CONSTRAINT [FK_Model.DesID]
    FOREIGN KEY ([DesID])
      REFERENCES [Designer]([DesID])
);

CREATE TABLE [Guitar] (
  [GuitarID] int Identity(1,1),
  [CompDate] DateTime,
  [IsReadyForSale] char(1),
  [ModelNum] char(10),
  [CustID] INT,
  PRIMARY KEY ([GuitarID]),
  CONSTRAINT [FK_Guitar.CustID]
    FOREIGN KEY ([CustID])
      REFERENCES [Customer]([CustID]),
  CONSTRAINT [FK_Guitar.ModelNum]
    FOREIGN KEY ([ModelNum])
      REFERENCES [Model]([ModelNum])
);

CREATE TABLE [Technician] (
  [EmpNo] char(10),
  [TechName] varchar(80),
  PRIMARY KEY ([EmpNo])
);

CREATE TABLE [Inspection] (
  [InspID] INT IDENTITY (500, 5),
  [InspDate] Datetime,
  [QEG] varchar(30),
  [GuitarID] INT,
  [EmpNo] char(10),
  PRIMARY KEY ([InspID]),
  CONSTRAINT [FK_Inspection.EmpNo]
    FOREIGN KEY ([EmpNo])
      REFERENCES [Technician]([EmpNo]),
  CONSTRAINT [FK_Inspection.GuitarID]
    FOREIGN KEY ([GuitarID])
      REFERENCES [Guitar]([GuitarID])
);

