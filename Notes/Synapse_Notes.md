# Azure Synapse Analytics Notes

## What is Azure Synapse Analytics?
Azure Synapse Analytics is primarily used for data warehousing.

It is an end-to-end analytics solution where you can perform everything under one umbrella:
- Data loading (Data Integration using ADF)
- Data transformation (using Spark Pools)
- Data warehousing (using SQL Pools)

Earlier, we used Azure SQL Database, but now Synapse provides SQL Pools for handling large-scale data.

---

## Storage Concept
We should use an external storage account.

- Data is stored in external storage (ADLS)
- Data is NOT stored in default Synapse storage

---

## Distributed Query Engine
Synapse SQL is a distributed query engine.

It is similar to MySQL or SQL Server, but those run on a single system, whereas Synapse works in a distributed manner.

- Tasks are assigned to multiple machines
- Parallel processing is performed

---

## Dedicated vs Serverless SQL Pool

### Dedicated SQL Pool
- Data is loaded into traditional databases
- Uses provisioned resources
- You pay even when not querying

---

### Serverless SQL Pool
- Data is stored in files like:
  - Parquet
  - CSV
- No infrastructure to manage
- Queries data directly from Data Lake
- You only pay for the data you process

---

## Synapse SQL Architecture

### Distributed Engine
- One Control Node (acts as brain)
- Multiple Compute Nodes (worker nodes)

Control Node:
- Assigns tasks to compute nodes

Compute Nodes:
- Perform actual work

- Nodes can range from 1 to 60

---

## Spark Pool

- Driver Program (Control Node)
- Cluster Manager (YARN)
- Worker Nodes

Benefits:
- High speed
- Efficient
- Easy to create

---

## Hands-on Setup

### Step 1: Create Resource Group
- Name: RG-Synapse-Course

### Step 2: Create Storage Account
- Enable Hierarchical Namespace

Why:
- Converts Blob Storage to Data Lake
- Allows folder structure

### Step 3: Create Synapse Workspace
- Managed resource group is created automatically

Storage:
- External storage → actual data
- Managed storage → metadata and internal data

---

## Synapse Features

### Linked Services
- Used to connect to source and destination
- Default storage linked service is created automatically
- For external sources, we need to create manually

---

## Dedicated SQL Pool (Advanced)

### Distributed Tables
Data is stored across multiple nodes.

### Distribution Types

#### Hash Distribution
- Used for large tables (fact tables)
- Similar values are stored together

#### Round Robin
- Data is distributed randomly
- Used for staging tables

Advantages:
- Fast data loading

Disadvantages:
- Joins can be slow

#### Replicated Tables
- Used for small tables (dimension tables)
- Full copy stored on every node

Advantages:
- Fast joins
- No data movement

Disadvantages:
- High storage usage

---

## Serverless SQL Pool (Detailed)

- Data is stored in external ADLS
- We create logical metadata (not physical tables)

### Key Concept
- Tables are NOT stored in ADLS
- Only metadata is stored in Synapse

---

## Managed vs External Tables

### Managed Tables
- Data + metadata stored in Synapse
- Dropping table deletes data

### External Tables
- Only metadata stored in Synapse
- Data remains in ADLS even if table is dropped

---

## Connecting to ADLS

- Use Managed Identity
- Assign role (Contributor) to storage account

Steps:
1. Create Master Key
2. Create Credential
3. Use it to access ADLS

---

## OPENROWSET

OPENROWSET is used to:
- Read data directly from external files
- No need to create tables

Supports:
- CSV
- Parquet

---

## External Tables

To create external tables, we need:
- External Data Source
- External File Format

External tables:
- Store only metadata
- Data remains in ADLS

---

## CETAS vs CTAS

### CETAS (Create External Table As Select)
- Creates external table
- Writes data to ADLS

### CTAS (Create Table As Select)
- Writes data inside Synapse (internal table)

---

## Data Loading Methods

To load data into Dedicated SQL Pool:

- COPY INTO
- CTAS (PolyBase)

---

## Data Transformation

- Use Apache Spark Pool
- Perform transformations using notebooks

---

## Important Concept

### Dedicated SQL Pool
- Data is stored internally (managed by Synapse)
- You cannot see actual files

### Serverless SQL Pool
- Data is stored in external ADLS
- Synapse only queries the data
