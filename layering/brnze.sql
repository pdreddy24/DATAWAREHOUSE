DROP PROCEDURE IF EXISTS check_tables;

DELIMITER $$
CREATE PROCEDURE check_tables()
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM bronze.tables 
        WHERE table_schema = 'bronze' AND table_name = 'crm_cust_info'
    ) THEN
        DROP TABLE bronze.crm_cust_info;
    END IF;
END$$
DELIMITER ;

create table bronze.crm_cust_info(
				cst_id int,
                cst_key varchar(50),
                cst_firstname varchar(50),
                cst_lastname varchar(50),
                cst_marital_status varchar(50),
                cst_gndr varchar(50),
                cst_create_date date
                );
			
DROP PROCEDURE IF EXISTS check_tablesCRM;
DELIMITER $$
CREATE PROCEDURE check_tablesCRM()
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM bronze.tables 
        WHERE table_schema = 'bronze' AND table_name = 'bronze.crm_prd_info'
    ) THEN
        DROP TABLE bronze.crm_cust_info;
    END IF;
END$$
DELIMITER ;

create table bronze.crm_prd_info(
			prd_id int,
            prd_key varchar(50),
            prd_nm varchar (50),
            prd_cost varchar(50),
            prd_line varchar(50),
            prd_start_dt date,
            prd_end_dt date
            );
            
            DROP PROCEDURE IF EXISTS check_tablesCRM_SALES;
            
            DELIMITER $$
CREATE PROCEDURE check_tablesCRM_SALES()
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM BRONZE.tables 
        WHERE table_schema = 'bronze' AND table_name = 'bronze.crm_sales_details'
    ) THEN
        DROP TABLE bronze.crm_cust_info;
    END IF;
END$$
DELIMITER ;
            
create table bronze.crm_sales_details(
		sls_ord_num int,
        sls_prd_key varchar(50),
        sls_cust_id int,
        sls_order_dt int,
        sls_ship_dt int,
        sls_due_dt int,
        sls_sales int,
        sls_quantity int,
        sls_price int
        );
DROP PROCEDURE IF EXISTS TABLE_CHECK_ERP1;
DELIMITER $$
CREATE PROCEDURE TABLE_CHECK_ERP1()
BEGIN 
	IF EXISTS (
    SELECT 1 FROM BRONZE.TABLES
		WHERE TABLE_SCHEMA = 'BRONZE' AND TABLE_NAME = 'bronze.erp_CUST_AZ12'
        ) THEN
        DROP TABLE bronze.erp_CUST_AZ12;
        END IF;
	END$$
DELIMITER ;


create table bronze.erp_CUST_AZ12(
				CID varchar(50),
                BDATE DATE,
                GEN varchar(10)
			);
DROP PROCEDURE IF EXISTS TABLE_CHECK_ERP2;
DELIMITER $$
CREATE PROCEDURE TABLE_CHECK_ERP2()
BEGIN 
	IF EXISTS (
    SELECT 1 FROM BRONZE.TABLES
		WHERE TABLE_SCHEMA = 'BRONZE' AND TABLE_NAME = 'bronze.erp_LOC_A101'
        ) THEN
        DROP TABLE bronze.erp_CUST_AZ12;
        END IF;
	END$$
DELIMITER ;
create table bronze.erp_LOC_A101(
				CID varchar(50),
                CNTRY varchar(50)
                );
                
                DROP PROCEDURE IF EXISTS TABLE_CHECK_ERP2;
DELIMITER $$
CREATE PROCEDURE TABLE_CHECK_ERP3()
BEGIN 
	IF EXISTS (
    SELECT 1 FROM BRONZE.TABLES
		WHERE TABLE_SCHEMA = 'BRONZE' AND TABLE_NAME = ' bronze.erp_PX_CAT_G1V2'
        ) THEN
        DROP TABLE bronze.erp_CUST_AZ12;
        END IF;
	END$$
DELIMITER ;
                
create table bronze.erp_PX_CAT_G1V2(
			ID varchar(50),
            CAT varchar(50),
            SUBCAT varchar(100),
            MAINTENANCE varchar(50));
