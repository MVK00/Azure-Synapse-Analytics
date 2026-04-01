# Azure Synapse Analytics Notes

## What is Azure Synapse Analytics?
Azure Synapse Analytics is an end-to-end analytics solution primarily used for data warehousing.

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
We used Azure SQL Database.

### Now
Synapse provides SQL Pools for handling large-scale data.
