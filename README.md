# Azure Synapse Analytics

This repository documents my structured study and practical exploration of Azure Synapse Analytics, covering core architectural concepts, data processing techniques, and SQL-based analytics.

It includes detailed notes and implementations of key features such as distributed query processing, Dedicated and Serverless SQL Pools, external tables, and data integration with Azure Data Lake.

---

## Overview

Azure Synapse Analytics is an end-to-end analytics service that allows:

- Data ingestion
- Data transformation
- Data storage
- Data analytics

It combines big data and data warehousing in a single platform.

---

## What I Covered

### Core Concepts
- Data Warehousing in Synapse
- Dedicated vs Serverless SQL Pools
- Distributed Query Processing
- Synapse SQL Architecture

### Storage
- Azure Data Lake Storage Gen2 (ADLS)
- External vs Managed storage
- Logical vs Physical data storage

### Data Processing
- Spark Pools and Notebooks
- Data transformation using Spark
- Querying data using SQL

### SQL Features
- OPENROWSET
- External Tables
- CETAS (Create External Table As Select)
- CTAS (Create Table As Select)
- COPY INTO

### Security and Access
- Managed Identity
- Credentials
- Accessing ADLS from Synapse

### Table Types
- Distributed Tables
  - Hash Distribution
  - Round Robin
  - Replicated Tables

---

## Key Learnings

- Synapse is a unified platform for data engineering and analytics
- Serverless SQL queries data directly from files in ADLS
- Dedicated SQL Pool stores data internally with distributed architecture
- External tables store only metadata, not actual data
- CETAS is used to write query results into Data Lake

---

## Future Improvements

- Add real-world project using Synapse
- Include end-to-end data pipeline
- Add performance optimization techniques
