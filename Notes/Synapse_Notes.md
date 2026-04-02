## Azure Synapse Analytics Notes

### What is Azure Synapse Analytics?

Azure Synapse Analytics is an end-to-end analytics solution primarily used for data warehousing. It includes everything from gathering data from different sources to building fact and dimension tables.

### Overview

Azure Synapse allows you to perform multiple data operations in one place:

Data Ingestion  
Data Transformation  
Data Storage  
Data Analytics  


### Key Capabilities

#### 1. Data Integration

Azure Synapse integrates with Azure Data Factory (ADF).

Use cases:

Load data from different sources  
Create and manage pipelines  

Example:

Load data from:

SQL Server  
APIs  
Blob Storage  


#### 2. Data Transformation

Uses Spark Pools.

You can create notebooks similar to Databricks.

Example:

Clean raw CSV data  
Apply transformations using PySpark  


#### 3. Data Warehousing (Core Feature)

Uses SQL Pools.

Designed for OLAP workloads (large-scale analytics).


### Comparison

#### Earlier

We used Azure SQL Database.

#### Now

Synapse provides SQL Pools for large-scale data.


### Storage Concept

Synapse works with external storage (Data Lake) to store data.

Data is stored in:

Azure Data Lake Storage Gen2  

Synapse itself stores:

Metadata  
Logs  
Temporary data  


### Distributed Query Engine

Synapse SQL is a distributed query engine.

It is similar to MySQL or SQL Server, which run on a single system, but Synapse is distributed. It processes data in a distributed manner by assigning tasks to multiple machines and performing parallel processing.

Meaning:

Instead of one machine processing data, the work is divided across multiple machines.

Benefits:

Faster processing  
Parallel execution  


### Dedicated vs Serverless SQL Pools

#### Dedicated SQL Pool

Data is stored in traditional databases.

Uses provisioned resources.

You pay even when not querying.

Example:

Company dashboard running continuously.

Dedicated: We need to pay even if we are not querying, as soon as we create a database.


#### Serverless SQL Pool

Data remains in:

Parquet  
CSV  
JSON files  

You only pay when you query the data.

Example:

Ad-hoc queries on Data Lake.

Serverless: We do not need to pay for storage because data is in the Data Lake. We only pay for the data we process.


### Synapse SQL Architecture

A distributed engine consists of one control node and multiple compute nodes.

The control node assigns tasks to compute nodes and acts as the brain, while worker nodes perform the actual work. Nodes can range from 1 to 60.

It is similar to a driver program, cluster manager, and worker nodes.

Control Node:

Acts as the brain  
Assigns tasks  

Compute Nodes:

Perform the actual processing  

Range:

Can scale from 1 to 60 nodes  


### Synapse vs Spark Analogy

Control Node corresponds to Driver Program  

Compute Nodes correspond to Worker Nodes  


### Spark Pool Architecture

Driver Node controls execution.

Cluster Manager divides the tasks into smaller pieces and assigns them to worker nodes. Worker nodes report back to the cluster manager, not directly to the driver.

Worker Nodes execute tasks.

Benefits:

High speed  
Scalable  
Easy to create  


### Hands-on Setup

Create Resource Group:

Name: RG-Synapse-Course  


Create Storage Account:

Enable Hierarchical Namespace.

Why:

Converts Blob Storage to Data Lake  
Allows folder structure with multiple hierarchies  
Supports big data processing  


Create Synapse Workspace:

Two Storage Types:

External Storage:

Where actual data is stored (ADLS created by us)

Managed Storage:

Created during workspace creation

Stores:

Metadata  
Internal data  
