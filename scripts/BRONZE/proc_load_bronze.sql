

create or alter procedure bronze.load_bronze as 

begin
truncate table bronze.crm_cust_info;


bulk insert bronze.crm_cust_info
from 'C:\Users\dharaneesh.k\OneDrive - New American Funding\Documents\Datawarehousing\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
with (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);


------------------------------------------------------------------------------------------------------------------------------------------------
truncate table bronze.crm_prd_info;


bulk insert bronze.crm_prd_info
from 'C:\Users\dharaneesh.k\OneDrive - New American Funding\Documents\Datawarehousing\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
with (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);


------------------------------------------------------------------------------------------------------------------------------------------------

truncate table bronze.crm_sales_details;


bulk insert bronze.crm_sales_details
from 'C:\Users\dharaneesh.k\OneDrive - New American Funding\Documents\Datawarehousing\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
with (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);

------------------------------------------------------------------------------------------------------------------------------------------------
truncate table bronze.erp_custaz12;


bulk insert bronze.erp_custaz12
from 'C:\Users\dharaneesh.k\OneDrive - New American Funding\Documents\Datawarehousing\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
with (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
------------------------------------------------------------------------------------------------------------------------------------------------

truncate table bronze.erp_LOCA101;


bulk insert bronze.erp_LOCA101
from 'C:\Users\dharaneesh.k\OneDrive - New American Funding\Documents\Datawarehousing\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
with (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
------------------------------------------------------------------------------------------------------------------------------------------------

truncate table bronze.erp_PX_CAT_G1V2;


bulk insert bronze.erp_PX_CAT_G1V2
from 'C:\Users\dharaneesh.k\OneDrive - New American Funding\Documents\Datawarehousing\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
with (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);

------------------------------------------------------------------------------------------------------------------------------------------------
end


