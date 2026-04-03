--Copy Into

CREATE TABLE copy_into_table
(
    Dealer_ID VARCHAR(4000),
    Model_ID VARCHAR(4000),
    Branch_ID VARCHAR(4000),
    Date_ID VARCHAR(4000),
    Units_Sold BIGINT,
    Revenue BIGINT
)
WITH
(
    DISTRIBUTION = ROUND_ROBIN
);

--Loading Data
COPY INTO copy_into_table
(   
    Dealer_ID 1,
    Model_ID 2,
    Branch_ID 3,
    Date_ID 4,
    Units_Sold 5,
    Revenue 6
)
FROM 'https://synapsecoursestorage1.dfs.core.windows.net/raw/cetas_revenue/'
WITH
(
    FILE_TYPE = 'PARQUET',
    CREDENTIAL = (IDENTITY = 'Managed Identity')
);


select * from copy_into_table