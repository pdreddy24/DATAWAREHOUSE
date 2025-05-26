-- Switch to the 'sys' database for system-related queries
use sys;

-- Change delimiter to $$ to define stored procedure with internal semicolons
DELIMITER $$

  -- Create stored procedure 'check_datawarehouse' to check if a record with name 'datawarehouse' exists
-- Procedure returns a message indicating existence or absence

CREATE PROCEDURE check_datawarehouse()
BEGIN
    IF EXISTS (
        SELECT 1 FROM datawarehouse WHERE name = 'datawarehouse'
    ) THEN
        SELECT 'Datawarehouse exists' AS result;
    ELSE
        SELECT 'Datawarehouse does not exist' AS result;
    END IF;
END$$

-- Reset delimiter back to semicolon
DELIMITER ;

-- Call the stored procedure to test its functionality
call check_datawarehouse();

-- Create new database 'DataWarehouse'

CREATE DATABASE DataWarehouse;

-- Switch to the 'DataWarehouse' database
use DataWarehouse;

-- Create schemas 'BRONZE', 'SILVER', and 'GOLD' for data layering
CREATE SCHEMA BRONZE;
CREATE SCHEMA SILVER;
CREATE SCHEMA GOLD;



