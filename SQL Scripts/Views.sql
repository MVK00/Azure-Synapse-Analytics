-- Views

create view revenue_view as 
select * from OPENROWSET(
    BULK 'revenue', 
    DATA_SOURCE = 'raw_ext_source',
    FORMAT = 'csv',
    PARSER_VERSION = '2.0',
    HEADER_ROW=TRUE
) as query1

select * from revenue_view

select * from revenue_cetas