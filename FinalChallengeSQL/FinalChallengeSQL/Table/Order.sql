CREATE TABLE [dbo].[Order]
(
	[CustNo] INT NOT NULL, 
    [RecordID] NVARCHAR(50) NOT NULL,
    [DateOrdered] DATE NOT NULL, 
    [Price] MONEY NOT NULL
	PRIMARY KEY ([CustNo], [RecordID], [DateOrdered]),
	FOREIGN KEY ([CustNo]) REFERENCES Customer ([CustNo]),
	FOREIGN KEY ([RecordID]) REFERENCES Record ([RecordID])
)
