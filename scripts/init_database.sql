/*
===================================================
Create Database and Schemas
===================================================
Script Purpose:
  This script creates a new database names 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
  within the database: 'bronze', 'silver', and 'gold'.

WARNING:
  Runnign this script will drop the entire 'DataWarehouse' database if it exists.
  All the data in the database will be permanently deleted. Proceed with caution
  and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWaarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO











