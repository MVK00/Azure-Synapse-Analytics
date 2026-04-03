-- Create Credential

CREATE DATABASE SCOPED CREDENTIAL anshcreds
WITH
    IDENTITY = 'Managed Identity';


-- Create External Datasource
create EXTERNAL data source raw_ext_source
with
(
    LOCATION = 'https://synapsecoursestorage1.dfs.core.windows.net/raw',
    CREDENTIAL= anshcreds
)

create EXTERNAL data source raw_ext_source_abfss
with
(
    LOCATION = 'abfss://raw@synapsecoursestorage1.dfs.core.windows.net',
    CREDENTIAL= anshcreds
)



-- Create Parquet File Format
CREATE EXTERNAL FILE FORMAT parquet_format
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);













