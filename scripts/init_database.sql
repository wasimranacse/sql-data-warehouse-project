/*
Create Database and Schemas

Scripts Purpose: This will create a new database called DataWarehouse
If it exists already, then it will be dropped and recreated
Schmas bronze, silver and gold will be created!

Notice: Running this script will permanently delete the entire database and data if it already exists!

*/

USE master;
GO

-- Drop if the database already exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the Database DataWareouse
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

-- Creating the Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
Go

CREATE SCHEMA gold;
GO


