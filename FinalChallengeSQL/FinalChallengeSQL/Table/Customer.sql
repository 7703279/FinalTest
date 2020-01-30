﻿CREATE TABLE [dbo].[Customer]
(
	[CustNo] INT NOT NULL PRIMARY KEY, 
    [CustName] NVARCHAR(50) NOT NULL, 
    [CustAddress] NVARCHAR(50) NOT NULL, 
    [CustPcode] INT NOT NULL, 
    [InterestCode] NVARCHAR(50) NOT NULL,	
	FOREIGN KEY ([InterestCode]) REFERENCES Interest ([InterestCode])
)