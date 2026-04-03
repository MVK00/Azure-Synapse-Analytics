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

-- Openrowset Function
select * from OPENROWSET(
    BULK 'revenue', 
    DATA_SOURCE = 'raw_ext_source',
    FORMAT = 'csv',
    PARSER_VERSION = '2.0',
    HEADER_ROW=TRUE
) as query1


-- Create External File Format
CREATE EXTERNAL FILE FORMAT csv_format
WITH
(
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS (
        FIELD_TERMINATOR = ','
    )
);


-- Create Parquet File Format
CREATE EXTERNAL FILE FORMAT parquet_format
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);













