CREATE TABLE [dbo].[Account]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NOT NULL, 
    [phonenum] VARCHAR(50) NOT NULL, 
    [email] VARCHAR(50) NOT NULL, 
    [passwd] VARCHAR(50) NOT NULL
)
