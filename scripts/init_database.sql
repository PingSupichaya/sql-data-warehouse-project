/* 
=========================================
Create Database and Schemas 
=========================================
Script purpose: this scripts create new database after drop the existing database
and create three schemas for data architecture layers
*/

use master;
go

-- Drop and recreate the 'DataWarehouse'
if exists (select 1 from sys.databases where name = 'DataWarehouse') begin
	alter database DataWarehouse set single_user with rollback immediate;
	drop database DataWarehouse;
end;
go

create database DataWarehouse;
go

use DataWarehouse;
go

create schema bronze;
go

create schema silver;
go

create schema gold;
go