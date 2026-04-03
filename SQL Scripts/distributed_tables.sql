-- Round Robin Table

CREATE TABLE round_table
(
    id INT,
    name VARCHAR(4000),
    salary INT
)
WITH
(
    DISTRIBUTION = ROUND_ROBIN
);

insert into round_table
VALUES
(1,'aa',10)

select * from round_table

-- Replicate Table(for dim tables)

create schema gold;

CREATE TABLE gold.dim_product
(
    dim_key_prod INT,
    prod_id INT,
    prod_name VARCHAR(4000)
)
WITH
(
    DISTRIBUTION = REPLICATE
);

-- Hash Table

CREATE TABLE gold.facttable
(
    dim_key_prod INT,
    revenue INT,
    cost INT
)
WITH
(
    DISTRIBUTION = HASH(dim_key_prod)
);




