﻿/*
Deployment script for DAD

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "DAD"
:setvar DefaultFilePrefix "DAD"
:setvar DefaultDataPath ""
:setvar DefaultLogPath ""

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO INTEREST VALUES (RR, 'Rock and Roll');
INSERT INTO INTEREST VALUES (JA, 'Jazz');
INSERT INTO INTEREST VALUES (RB, 'Rhythm and Blues');

INSERT INTO CUSTOMER VALUES (123, 'Freddie Mercury', '1 Sesame Street',	3000,	'RR');
INSERT INTO CUSTOMER VALUES (456, 'Brian May', '10 Downing Street',	4000,	'JA');
INSERT INTO CUSTOMER VALUES (789, 'John Deacon', '221B Baker Street',	5000,	'RB');
INSERT INTO CUSTOMER VALUES (234, 'Roger Taylor', 'LG1 College Cres, Parkville',	6000,	'RR');
INSERT INTO CUSTOMER VALUES (567, 'Mike', '1 Adelaide Avenue',	7000,	'RB');

INSERT INTO RECORD VALUES (PF003, 'The Wall', 'Pink Floyd');
INSERT INTO RECORD VALUES (IX002, 'Kick', 'INXS');
INSERT INTO RECORD VALUES (SP069, 'Never Mind the Bollocks', 'Sex Pistols');
INSERT INTO RECORD VALUES (PF002, 'The Dark Side of the Moon', 'Pink Floyd');
INSERT INTO RECORD VALUES (IX005, 'Shabooh Shoobah', 'INXS');
INSERT INTO RECORD VALUES (SP070, 'Floggin a Dead Horse', 'Sex Pistols');
INSERT INTO RECORD VALUES (PF004, 'The Endless River', 'Pink Floyd');
INSERT INTO RECORD VALUES (PF006, 'Wish You Were Here', 'Pink Floyd');
INSERT INTO RECORD VALUES (SP075, 'Agents of Anarchy', 'Sex Pistols');
INSERT INTO RECORD VALUES (PF007, 'The Division Bell', 'Pink Floyd');

INSERT INTO [Order] VALUES (123, 'PF003', '01-Dec-19', 30.00);
INSERT INTO [Order] VALUES (123, 'IX002', '01-Dec-19', 29.95);
INSERT INTO [Order] VALUES (123, 'SP069', '02-Dec-19', 12.45);
INSERT INTO [Order] VALUES (123, 'IX002', '05-Dec-19', 30.00);
INSERT INTO [Order] VALUES (456, 'PF002', '01-Dec-19', 31.00);
INSERT INTO [Order] VALUES (456, 'X005', '03-Dec-19', 28.95);
INSERT INTO [Order] VALUES (456, 'SP070', '06-Dec-19', 13.45);
INSERT INTO [Order] VALUES (789, 'PF004', '02-Dec-19', 29.00);
INSERT INTO [Order] VALUES (789, 'IX002', '05-Dec-19', 29.95);
INSERT INTO [Order] VALUES (234, 'PF006', '01-Dec-19', 45.00);
INSERT INTO [Order] VALUES (234, 'SP075', '04-Dec-19', 5.67);
INSERT INTO [Order] VALUES (567	, 'PF007', '03-Dec-19', 9.95);
GO

GO
PRINT N'Update complete.';


GO
