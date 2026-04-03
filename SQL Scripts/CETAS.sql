-- CETAS 

-- CETAS

CREATE EXTERNAL TABLE revenue_cetas
WITH
(
    LOCATION = 'cetas_revenue',
    DATA_SOURCE = raw_ext_source,
    FILE_FORMAT = parquet_format
)
AS
select * from OPENROWSET(
    BULK 'revenue', 
    DATA_SOURCE = 'raw_ext_source',
    FORMAT = 'csv',
    PARSER_VERSION = '2.0',
    HEADER_ROW=TRUE
) as query1