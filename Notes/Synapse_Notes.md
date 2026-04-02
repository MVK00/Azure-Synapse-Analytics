# Azure Synapse Analytics Notes

## What is Azure Synapse Analytics?
Azure Synapse Analytics is an end-to-end analytics solution primarily used for data warehousing (it includes everything from gathering data from different sources to building fact and dimension tables).

## Overview
Azure Synapse allows you to perform multiple data operations in one place:
- Data Ingestion
- Data Transformation
- Data Storage
- Data Analytics

## Key Capabilities

### 1. Data Integration
Azure Synapse integrates with Azure Data Factory (ADF).

**Use cases:**
- Load data from different sources
- Create and manage pipelines

**Example:**
Load data from:
- SQL Server
- APIs
- Blob Storage

---

### 2. Data Transformation
Uses Spark Pools.

You can create notebooks similar to Databricks.

**Example:**
- Clean raw CSV data
- Apply transformations using PySpark

---

### 3. Data Warehousing (Core Feature)
Uses SQL Pools.

Designed for OLAP workloads (large-scale analytics).

---

## Comparison

### Earlier
- We used Azure SQL Database

### Now
- Synapse provides SQL Pools for handling large-scale data

---

## Storage Concept
Synapse works with external storage (Data Lake).

**Data is stored in:**
- Azure Data Lake Storage Gen2

**Synapse stores:**
- Metadata
- Logs
- Temporary data

---

## Distributed Query Engine
Synapse SQL is a distributed query engine.

It is similar to MySQL or SQL Server (which run on a single system), but Synapse works in a distributed manner.

**Meaning:**
- Work is divided across multiple machines instead of a single system

**Benefits:**
- Faster processing
- Parallel execution

---

## Dedicated vs Serverless SQL Pools

### Dedicated SQL Pool
- Data is stored in traditional databases
- Uses provisioned resources
- You pay even when not querying

**Example:**
- Company dashboard running continuously

**Note:**
- You need to pay as soon as the database is created, even if it is not used

---

### Serverless SQL Pool
**Data is stored in:**
- Parquet
- CSV
- JSON files

**Pricing:**
- You only pay when you query the data

**Example:**
- Ad-hoc queries on Data Lake

**Note:**
- No cost for storage, only for processing the queried data

---

## Synapse SQL Architecture
A distributed engine consists of control and compute nodes.

**Control Node:**
- Acts as the brain
- Assigns tasks to compute nodes

**Compute Nodes (Worker Nodes):**
- Perform actual data processing

**Range:**
- Can scale from 1 to 60 nodes

**Concept:**
- Similar to driver program, cluster manager, and worker nodes

---

## Synapse vs Spark Analogy
- Control Node → Driver Program
- Compute Nodes → Worker Nodes

---

## Spark Pool Architecture

**Driver Node:**
- Controls execution

**Cluster Manager:**
- Divides tasks into smaller parts
- Assigns tasks to worker nodes
- Workers report back to cluster manager (YARN)

**Worker Nodes:**
- Execute tasks

**Benefits:**
- High speed
- Scalable
- Easy to create

---

## Hands-on Setup

### Step 1: Create Resource Group
- Name: RG-Synapse-Course

### Step 2: Create Storage Account
**Enable:**
- Hierarchical Namespace

**Why:**
- Converts Blob Storage to Data Lake
- Allows folder structure with multiple hierarchies
- Supports big data processing

### Step 3: Create Synapse Workspace

**Two Storage Types:**

**External Storage:**
- Stores actual data
- Azure Data Lake (created by us)

**Managed Storage:**
- Created during workspace setup

**Stores:**
- Metadata
- Internal data
